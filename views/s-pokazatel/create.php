<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SPokazatel */

$this->title = 'Create S Pokazatel';
$this->params['breadcrumbs'][] = ['label' => 'S Pokazatels', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="spokazatel-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
