<?php 
use yii\helpers\Html;
$this->beginPage();
?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <title><?= Html::encode($this->title) ?></title>
</head>
<body>
<div class="cont">
<div class="header">
    <table class="tb-header">
        <tr>
            <td>
                <img src="./img/logo_min.png" class="logo" height="150">
            </td>
            <td align="center">
                <p class="main_title">МАРКАЗИЙ ТИББИЙ ДИАГНОСТИКА</p>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                «SOG’LOM TABASSUM» ХК, манзил Андижон ш., Бобур шох кўчаси 109-Б уй. Тел:(0-595) 204-01-50.
            </td>
        </tr>
    </table>

</div>

<div class="container">
    <?= $content ?>
</div>

<footer class="footer">
<br><br>
</footer>
</div>
</body>
</html>
<?php $this->endPage() ?>

<style type="text/css">
    body{
        font-family: "Arial";
        font-size: 11px;
    }
    .cont{
        width: 1000px;
        margin: 0 auto;
    }
    .tb-header{
        width: 100%;
    }
    .logo{
        position: relative;
        top: 0px;
    }
    .main_title{
        font-size: 30px;
        font-family: INITIAL;
        font-weight: bold;
        text-align: center;
        position: relative;
        top: 20px;
    }
</style>