<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $lavozim
 * @property int|null $role_id
 * @property int|null $active
 * @property string|null $login
 * @property string|null $password
 * @property string|null $mobile
 * @property string|null $info
 * @property string|null $img
 * @property string|null $other
 * @property string|null $add1
 */
class Users extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['role_id', 'active'], 'integer'],
            [['info'], 'string'],
            [['name', 'lavozim', 'login', 'password', 'img', 'other', 'add1'], 'string', 'max' => 255],
            [['mobile'], 'string', 'max' => 20],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'ФИШ',
            'lavozim' => 'Лавозими',
            'role_id' => 'Роль',
            'active' => 'Холати',
            'login' => 'Логин',
            'password' => 'Пароль',
            'mobile' => 'Телефон раками',
            'info' => 'Маълумотлари',
            'img' => 'Расм',
            'other' => 'Кушимча маълумотлари',
            'add1' => 'Add1',
        ];
    }
    
    public function validatePassword($password)
    {
        return $this->password === $password;
    }

    public static function findIdentity($id)
    {
        return self::findOne($id) ? new static(self::findOne($id)) : null;
    }

    /**
     * {@inheritdoc}
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        if(self::findOne($token)){
            return self::findOne($token);
        }
        else{
            return null;    
        }
    }

    public function getId()
    {
        return $this->id;
    }

    public function getRole()
    {
        return $this->role_id;
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey()
    {
        return $this->id;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey)
    {
        return $this->id === $authKey;
    }

    public static function getMyName()
    {
        $model = self::findOne(Yii::$app->user->id);
        if($model){
            return $model->name;
        }
        else{
            return 'Топилмади';
        }
    }

    public static function getMyLav()
    {
        $model = self::findOne(Yii::$app->user->id);
        if($model){
            return $model->lavozim;
        }
        else{
            return 'Топилмади';
        }
    }
}

