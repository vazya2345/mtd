<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SAnaliz */

$this->title = 'Create S Analiz';
$this->params['breadcrumbs'][] = ['label' => 'S Analizs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sanaliz-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
