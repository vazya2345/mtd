<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "s_groups".
 *
 * @property int $id
 * @property string|null $title
 */
class SGroups extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 's_groups';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title'], 'string', 'max' => 255],
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
        ];
    }
}
