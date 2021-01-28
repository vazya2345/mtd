<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;
/**
 * This is the model class for table "client".
 *
 * @property int $id
 * @property string|null $fname
 * @property string|null $lname
 * @property string|null $mname
 * @property string|null $birthdate
 * @property string|null $sex
 * @property string|null $doc_seria
 * @property string|null $doc_number
 * @property string|null $inn
 * @property string|null $add1
 * @property string|null $type
 * @property int|null $user_id
 * @property string|null $create_date
 * @property string|null $change_date
 */
class Client extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'client';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['birthdate', 'create_date', 'change_date'], 'safe'],
            [['user_id'], 'integer'],
            [['fname', 'lname', 'mname', 'add1', 'type'], 'string', 'max' => 255],
            [['sex'], 'string', 'max' => 1],
            [['doc_seria'], 'string', 'max' => 10],
            [['doc_number', 'inn'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'lname' => 'Фамилия',
            'fname' => 'Имя',
            'mname' => 'Отасининг исми',
            'birthdate' => 'Тугилган йили',
            'sex' => 'Жинси',
            'doc_seria' => 'Хужжат серияси',
            'doc_number' => 'Хужжат раками',
            'inn' => 'ИНН',
            'add1' => 'Add1',
            'type' => 'Тур',
            'user_id' => 'User ID',
            'create_date' => 'Яратилган сана',
            'change_date' => 'Узгартирилган сана',
        ];
    }

    public static function getClientByDoc($doc_seria,$doc_number)
    {
        $model = self::find()->where(['doc_seria'=>$doc_seria,'doc_number'=>$doc_number])->one();
        if($model){
            return $model;
        }
        else{
            return false;
        }
    }

    public static function getName($id)
    {
        $model = self::findOne($id);
        if($model){
            return $model->lname.' '.$model->fname.' '.$model->mname;
        }
        else{
            return 'Топилмади';
        }
    }

    public static function getBirthDate($id)
    {
        $model = self::findOne($id);
        if($model){
            return $model->birthdate;
        }
        else{
            return 'Топилмади';
        }
    }

    public static function getArrayByFio($text)
    {
        $models = self::find()->select('id')->where(['like','lname',$text])->all();
        // var_dump($models);die;
        $ids = ArrayHelper::getColumn($models, 'id');
        return $ids;
    }
}
