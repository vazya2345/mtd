<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\PokazLimits */

$this->title = 'Create Pokaz Limits';
$this->params['breadcrumbs'][] = ['label' => 'Pokaz Limits', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pokaz-limits-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
