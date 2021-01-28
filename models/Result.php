<?php

namespace app\models;

use Yii;
use app\models\SPokazatel;

/**
 * This is the model class for table "result".
 *
 * @property int $id
 * @property int|null $main_id
 * @property int|null $analiz_id
 * @property int|null $pokaz_id
 * @property string|null $reslut_value
 * @property string|null $result_answer
 * @property string|null $create_date
 * @property int|null $user_id
 */
class Result extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'result';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['main_id', 'analiz_id', 'pokaz_id', 'user_id'], 'integer'],
            [['create_date'], 'safe'],
            [['reslut_value', 'result_answer'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'main_id' => 'Асосий ID',
            'analiz_id' => 'Тахлил ID',
            'pokaz_id' => 'Куртсатгич ID',
            'reslut_value' => 'Натижа микдори',
            'result_answer' => 'Натижа жавоби',
            'create_date' => 'Яратиш вакти',
            'user_id' => 'Фойдаланувчи ID',
        ];
    }

    public static function checkPokazs($reg)
    {
        $count = self::find()->where(['main_id'=>$reg->id,'analiz_id'=>$reg->analiz_id])->count();
        if($count>0){
            return true;
        }
        else{
            $pokazs = SPokazatel::getPokazs($reg->analiz_id);
            foreach ($pokazs as $pokaz) {
                $model = new Result();
                $model->main_id = $reg->id;
                $model->analiz_id = $reg->analiz_id;
                $model->pokaz_id = $pokaz->id;
                $model->save(false);
            }
            return true;
        }
    }
}
