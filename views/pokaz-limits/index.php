<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\PokazLimitsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Pokaz Limits';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pokaz-limits-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Pokaz Limits', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'pokaz_id',
            'indikator',
            'indikator_value',
            'norma',
            'down_limit',
            'up_limit',
            // 'add1',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
