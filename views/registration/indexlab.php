<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\models\Client;
use app\models\SAnaliz;
use app\models\Registration;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RegistrationSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Регистрациялар руйхати';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="registration-index">

    <p>
        <?= Html::a('Янги', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'client_id'=>[
                'attribute'=>'client_id',
                'value' => function ($data) {
                        return Client::getName($data->client_id);                    
                }
            ],
            // 'user_id',
            'analiz_id'=>[
                'attribute'=>'analiz_id',
                'filter'=>SAnaliz::getAll(),
                'value' => function ($data) {
                        return SAnaliz::getName($data->analiz_id);                    
                }
            ],
            // 'sum_amount',
            //'sum_cash',
            //'sum_plastik',
            //'sum_debt',
            //'add1',
            //'add2',
            //'other',
            'create_date',
            //'change_time',
            [
                'header' => 'Натижа', 
                'format' => 'raw',
                'value' => function ($data) {
                        return "<a href='?r=registration/resultlab&id=".$data->id."'>Натижа</a>";
                }
            ],
            // ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
