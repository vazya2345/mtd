<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SPokazatel */

$this->title = 'Update S Pokazatel: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'S Pokazatels', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="spokazatel-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
