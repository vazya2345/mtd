<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;
/**
 * This is the model class for table "s_analiz".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $price
 * @property int|null $is_active
 * @property int|null $ord
 * @property string|null $desc
 * @property string|null $add1
 * @property int|null $group_id
 *
 * @property VidAnaliz[] $vidAnalizs
 */
class SAnaliz extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 's_analiz';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['price', 'is_active', 'ord', 'group_id'], 'integer'],
            [['desc'], 'string'],
            [['title', 'add1'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Номланиши',
            'price' => 'Нарх',
            'is_active' => 'Мавжудлиги',
            'ord' => 'Буюртма',
            'desc' => 'Маълумот',
            'add1' => 'Add1',
            'group_id' => 'Гурух ID',
        ];
    }

    /**
     * Gets query for [[VidAnalizs]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getVidAnalizs()
    {
        return $this->hasMany(VidAnaliz::className(), ['analiz_id' => 'id']);
    }

    public static function getAll()
    {
        $array = self::find()->all();
        $result = ArrayHelper::map($array, 'id', 'title');
        return $result;
    }

    public static function getAllPrice()
    {
        $array = self::find()->all();
        return $array;
    }

    public static function getName($id)
    {
        $model = self::findOne($id);
        if($model){
            return $model->title;
        }
        else{
            return 'Топилмади';
        }
    }
}
