<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "registration".
 *
 * @property int $id
 * @property int $client_id
 * @property int $user_id
 * @property int $analiz_id
 * @property int|null $sum_amount
 * @property int|null $sum_cash
 * @property int|null $sum_plastik
 * @property int|null $sum_debt
 * @property string|null $add1
 * @property string|null $add2
 * @property string|null $other
 * @property string|null $create_date
 * @property string|null $change_time
 */
class Registration extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'registration';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['client_id', 'user_id', 'analiz_id'], 'required'],
            [['client_id', 'user_id', 'analiz_id', 'sum_amount', 'sum_cash', 'sum_plastik', 'sum_debt'], 'integer'],
            [['create_date', 'change_time'], 'safe'],
            [['add1', 'add2', 'other'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'client_id' => 'Мижоз ID',
            'user_id' => 'Фойдаланувчи ID',
            'analiz_id' => 'Тахлил ID',
            'sum_amount' => 'Нарх',
            'sum_cash' => 'Накд пул',
            'sum_plastik' => 'Пластик карта',
            'sum_debt' => 'Карз',
            'add1' => 'Реферал коди',
            'add2' => 'Add2',
            'other' => 'Бошкалар',
            'create_date' => 'Яратиш вакти',
            'change_time' => 'Узгартириш вакти',
        ];
    }

    public static function getNatijaLink($id)
    {
        $model = self::findOne($id);
        $tolangan = $model->sum_cash+$model->sum_plastik;
        if($model->sum_amount==$tolangan){
            return "<a href='?r=registration/result&id=".$id."'>Натижа</a>";
        }
        else{
            return "Тулов тулик амалга оширилмаган";
        }
    }

    public static function getIsPay($id)
    {
        $model = self::findOne($id);
        $tolangan = $model->sum_cash+$model->sum_plastik;
        if($model->sum_amount==$tolangan){
            return true;
        }
        else{
            return false;
        }
    }

    public static function getClassForSum($id)
    {
        $fmodel = FinishPayments::findOne($id);
        if($fmodel){
            return ['class'=>'bg-success'];
        }
        else{
            return ['class'=>'bg-default'];   
        }
    }


}
