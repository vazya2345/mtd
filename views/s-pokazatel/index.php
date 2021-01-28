<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SPokazatelSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'S Pokazatels';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spokazatel-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create S Pokazatel', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'analiz_id',
            'add1',
            'ord',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
