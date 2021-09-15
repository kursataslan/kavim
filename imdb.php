<?php !defined('güvenlik')?die('Bu Şekilde Girilemez!'):null;

$sayfa=intval(@$_GET['sayfa']);
if(!$sayfa)
    $sayfa=1;

$film=$db->prepare("Select*From film");
$film->execute(array());
$toplam=$film->rowCount();
$limit=10;
$show=$sayfa*$limit-$limit;
$sayfa_sayisi=ceil($toplam/$limit);
$forlimit=5;
$film=$db->prepare("Select*From film Where film_imdb>=7 ORDER BY film_imdb Desc limit $show,$limit ");
$film->execute(array());
$f=$film->fetchAll(PDO::FETCH_ASSOC);
?>



<main class="Main">
    <div class="main">

        <div class="container">

            <?php    foreach ($f as $l) {?>

                <div class="view view-seventh">
                    <p align="center" style="
                            position: absolute;
                            margin-left: 130px;
                            margin-top: 6px;
                            background-color: deepskyblue;
                            padding: 8px;
                            color: floralwhite;
                            font-weight: 600;
                            border-radius: 30px;
                            box-shadow: 5px -5px 4px lightskyblue;
                            text-shadow: 2px 2px 5px gray;
                            ">IMDB<br><?php echo $l["film_imdb"]?></p>
                    <input type="image" src="img/afis/<?php echo $l["film_afisi"]?>" />

                    <div class="mask">

                        <a href="film?id=<?php echo $l["film_id"]?>" type="submit" class="info"><?php echo $l["film_adi"]?></a>

                    </div>

                </div>

                <?php
            }
            ?>
            <div class="sayfalama">
                <?php
                for($i=$sayfa - $forlimit;$i<$sayfa + $forlimit +1;$i++){
                    if($i>0 && $i<=$sayfa_sayisi){
                        if($i==$sayfa){
                            echo "<span class='aktif'>".$i."</span>";
                        }else{
                            echo "<span class='sayfa'><a href='?kvm=imdb&sayfa=".$i."'type='submit'>".$i."</a></span>";
                        }
                    }

                }
                ?>
            </div>

        </div>

    </div>


</main>
