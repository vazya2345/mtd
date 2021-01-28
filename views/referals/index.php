<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ReferalsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Referals';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="referals-index card">
    <div class="card-body">

    <p>
        <?= Html::a('Янги', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'fio',
            'phone',
            'user_id',
            'desc',
            //'info:ntext',
            //'add1',
            //'refnum',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    </div>
</div>
