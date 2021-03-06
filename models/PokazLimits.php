<?php

namespace app\models;

use Yii;
use app\models\Registration;
use app\models\RegDopinfo;

/**
 * This is the model class for table "pokaz_limits".
 *
 * @property int $id
 * @property int|null $pokaz_id
 * @property string|null $indikator
 * @property string|null $indikator_value
 * @property string|null $norma
 * @property string|null $down_limit
 * @property string|null $up_limit
 * @property string|null $add1
 */
class PokazLimits extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pokaz_limits';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['pokaz_id'], 'integer'],
            [['indikator', 'norma', 'down_limit', 'up_limit'], 'string', 'max' => 30],
            [['indikator_value'], 'string', 'max' => 50],
            [['add1'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'pokaz_id' => 'Курсатгич ID',
            'indikator' => 'Курсатгич',
            'indikator_value' => 'Курсатгич микдори',
            'norma' => 'Норма',
            'down_limit' => 'Пастги чегара',
            'up_limit' => 'Юкори чегара',
            'add1' => 'Add1',
        ];
    }

    public static function getUztextindikator($pokaz_id,$indikator,$indikator_value,$sex,$birthdate,$age,$indikator_id,$myid)
    {

        $result = '';
        $res = '';
        if($indikator=='Жинси'){
            if($sex=='M'&&$indikator_value=='Эркак'){
                $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$indikator_value."</label><br>";
            }
            elseif($sex=='F'&&$indikator_value=='Аёл'){
                $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$indikator_value."</label><br>";
            }
            else{
                $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$indikator_value."</label><br>";
            }
        }
        elseif(substr($indikator_value, 0, 1)=='f'||substr($indikator_value, 0, 1)=='t'){
            if(substr($indikator_value, 0, 1)=='t'){
                switch ($indikator_value) {
                    case 't9h-12h:mejdu':
                        $res = 'Соат 9дан 12гача';
                        break;
                    case 't12h:after':
                        $res = 'Соат 12дан кейин';
                        break;
                    
                    default:
                        $res = 'Топилмади';
                        break;
                }
                return $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$res."</label><br>";
            }
            else{
                $arr = explode("~", $indikator_value);
                $res = '';
                foreach ($arr as $key => $value) {
                    $arr1 = explode(':', $value);
                    if($arr1[0]=='sex'){
                        if($arr1[1]=='m'){
                            $jinsi=' эркак';
                        }
                        elseif($arr1[1]=='f'){
                            $jinsi=' аёл';
                        }
                        else{
                            $jinsi='';
                        }
                    }
                    elseif(in_array($arr1[1], ['after','do','mejdu'])){
                        if(in_array($arr1[1], ['mejdu'])){
                            $arr2_str = substr($arr1[0], 1, strlen($arr1[0])-2);
                            if(strpos($arr2_str, 'y-') !== false){
                                $arr2 = explode('y-', $arr2_str);
                                $norm_age1 = $arr2[0];
                                $norm_age2 = $arr2[1];
                                if($age>=$norm_age1&&$age<=$norm_age2){
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$norm_age1." ва ".$norm_age2." ёш орасида {jinsi}</label><br>";
                                }
                                else{
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$norm_age1." ва ".$norm_age2." ёш орасида {jinsi}</label><br>";
                                }
                            }
                            elseif(strpos($arr2_str, 'm-') !== false){
                                $arr2 = explode('y-', $arr2_str);
                                $norm_age1 = $arr2[0];
                                $norm_age2 = $arr2[1];
                                if($age>=$norm_age1&&$age<=$norm_age2){
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$norma_age." ёшдан кичик {jinsi}</label><br>";
                                }
                                else{
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$norma_age." ёшдан кичик {jinsi}</label><br>";
                                }
                            }
                        }
                        else{
                            if($arr1[1]=='do'){
                                $norma_age = substr($arr1[0], 1, strlen($arr1[0])-2);
                                if($age<=$norma_age){
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$norma_age." ёшдан кичик {jinsi}</label><br>";
                                }
                                else{
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$norma_age." ёшдан кичик {jinsi}</label><br>";
                                }
                            }
                            else{
                                $norma_age = substr($arr1[0], 1, strlen($arr1[0])-2);
                                if($age>$norma_age){
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' checked /> ".$indikator.' - '.$norma_age." ёшдан катта {jinsi}</label><br>";
                                }
                                else{
                                    $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.$norma_age." ёшдан катта {jinsi}</label><br>";
                                }
                            }
                        }
                    }
                    else{
                        return $value;
                    }
                }
                $result = str_replace('{jinsi}', $jinsi, $result);
            }
        }
        else{
            $result.="<label><input type='radio' name=pokaz[".$myid."][".$pokaz_id."] value='".$indikator_id."' /> ".$indikator.' - '.PokazLimits::getUztextindikatorvalue($indikator_value)."</label><br>";
        }
        $result = str_replace('{jinsi}', $jinsi, $result);
        return $result;
    }

    public static function getUztextindikatorvalue($text)
    {
        if(substr($text, 0, 1)=='f'||substr($text, 0, 1)=='t'){
            if(substr($text, 0, 1)=='t'){
                switch ($text) {
                    case 't9h-12h:mejdu':
                        $res = 'Соат 9дан 12гача';
                        break;
                    case 't12h:after':
                        $res = 'Соат 12дан кейин';
                        break;
                    
                    default:
                        $res = 'Топилмади';
                        break;
                }
            }
            else{
                $arr = explode("~", $text);
                $res = '';
                foreach ($arr as $key => $value) {
                    $arr1 = explode(':', $value);
                    if($arr1[0]=='sex'){
                        if($arr1[1]=='m'){
                            $res.=' эркак';
                        }
                        elseif($arr1[1]=='f'){
                            $res.=' аёл';
                        }
                        else{
                            return 'Топилмади';
                        }
                    }
                    elseif(in_array($arr1[1], ['after','do','mejdu'])){
                        if(in_array($arr1[1], ['mejdu'])){

                        }
                        else{
                            if($arr1[1]=='do'){
                                $norma_age = substr($arr1[0], 1, strlen($arr1[0])-1);
                                if($age<=$norma_age){

                                }
                            }
                            else{
                                $norma_age = substr($arr1[0], 1, strlen($arr1[0])-1);

                            }
                        }
                    }
                    else{
                        return $value;
                    }
                }

            }
            return $res;
        }
        else{
            return $text;
        }
        die;
        switch ($text) {
            case 'm':
                $res = 'Эркак';
                break;
            case 'f':
                $res = 'Аёл';
                break;
            default:
                $res = 'Дефолт';
                break;
        }
        return $res;
    }

    public static function getClassByValue($main_id,$pokaz_id,$result)
    {
        
        $limits = self::find()->where(['pokaz_id'=>$pokaz_id])->all();

        if(count($limits)>1){
            $dop = RegDopinfo::find()->where(['reg_id'=>$main_id,'indikator_id'=>$pokaz_id])->one();
            if($dop){
                $limit = self::findOne($dop->value);
                if($limit){
                    if($result>=$limit->down_limit&&$result<=$limit->up_limit){
                        $class = 'success';
                    }
                    else{
                        $class = 'danger';
                    }
                }
                else{
                    $class = 'warning';    
                }
            }
            else{
                $class = 'warning';
            }
        }
        else{
            $limit = $limits[0];
            if($result>=$limit->down_limit&&$result<=$limit->up_limit){
                $class = 'success';
            }
            else{
                $class = 'danger';
            }
        }

        return ['class'=>'bg-'.$class];
    }

    public static function getMin($main_id,$pokaz_id)
    {
        $limits = self::find()->where(['pokaz_id'=>$pokaz_id])->all();
        if(count($limits)>1){
            $dop = RegDopinfo::find()->where(['reg_id'=>$main_id,'indikator_id'=>$pokaz_id])->one();
            if($dop){
                $limit = self::findOne($dop->value);
                if($limit){
                    $res = $limit->down_limit;
                }
                else{
                    $res = 0;
                }
            }
            else{
                $res = 0;
            }
        }
        else{
            $limit = $limits[0];
            if($limit){
                $res = $limit->down_limit;
            }
            else{
                $res = 0;
            }
        }
        return $res;
    }

    public static function getNorma($main_id,$pokaz_id)
    {
        $limits = self::find()->where(['pokaz_id'=>$pokaz_id])->all();
        if(count($limits)>1){
            $dop = RegDopinfo::find()->where(['reg_id'=>$main_id,'indikator_id'=>$pokaz_id])->one();
            if($dop){
                $limit = self::findOne($dop->value);
                if($limit){
                    $res = $limit->norma;
                }
                else{
                    $res = 0;
                }
            }
            else{
                $res = 0;
            }
        }
        else{
            $limit = $limits[0];
            if($limit){
                $res = $limit->norma;
            }
            else{
                $res = 0;
            }
        }
        return $res;
    }

    public static function getMax($main_id,$pokaz_id)
    {
        $limits = self::find()->where(['pokaz_id'=>$pokaz_id])->all();
        if(count($limits)>1){
            $dop = RegDopinfo::find()->where(['reg_id'=>$main_id,'indikator_id'=>$pokaz_id])->one();
            if($dop){
                $limit = self::findOne($dop->value);
                if($limit){
                    $res = $limit->up_limit;
                }
                else{
                    $res = 0;
                }
            }
            else{
                $res = 0;
            }
        }
        else{
            $limit = $limits[0];
            if($limit){
                $res = $limit->up_limit;
            }
            else{
                $res = 0;
            }
        }
        return $res;
    }
}
