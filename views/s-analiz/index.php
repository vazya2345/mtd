<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SAnalizSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'S Analizs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sanaliz-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create S Analiz', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'price',
            // 'is_active',
            // 'ord',
            //'desc:ntext',
            //'add1',
            //'group_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
