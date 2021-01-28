<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\models\Role;
/* @var $this yii\web\View */
/* @var $searchModel app\models\UsersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Фойдаланувчилар';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="role-index card">
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
            'name',
            'lavozim',
            'role_id'=>[
                'attribute'=>'role_id',
                'filter'=>Role::getAll(),
                'value' => function ($data) {
                        return Role::getName($data->role_id);                    
                }
            ],
            'active',
            //'login',
            //'password',
            //'mobile',
            //'info:ntext',
            //'img',
            //'other',
            //'add1',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    </div>
</div>
