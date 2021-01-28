<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "referals".
 *
 * @property int $id
 * @property string $fio
 * @property string|null $phone
 * @property int|null $user_id
 * @property string|null $desc
 * @property string|null $info
 * @property string|null $add1
 * @property string|null $refnum
 */
class Referals extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'referals';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fio'], 'required'],
            [['user_id'], 'integer'],
            [['info'], 'string'],
            [['fio', 'phone', 'desc', 'add1', 'refnum'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fio' => 'ФИШ',
            'phone' => 'Телефон',
            'user_id' => 'Фойдаланувчи',
            'desc' => 'Маълумот1',
            'info' => 'Маълумот2',
            'add1' => 'Маълумот3',
            'refnum' => 'Коди',
        ];
    }
}
