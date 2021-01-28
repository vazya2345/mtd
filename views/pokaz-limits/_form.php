<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\PokazLimits */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pokaz-limits-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'pokaz_id')->textInput() ?>

    <?= $form->field($model, 'indikator')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'indikator_value')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'norma')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'down_limit')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'up_limit')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'add1')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
