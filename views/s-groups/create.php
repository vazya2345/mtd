<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SGroups */

$this->title = 'Create S Groups';
$this->params['breadcrumbs'][] = ['label' => 'S Groups', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sgroups-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
