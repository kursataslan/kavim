<?php !defined('güvenlik')?die('Bu Şekilde Girilemez!'):null;

if($_POST){
    $ara=$_POST['ara'];
    $film=$db->prepare("Select*From film Where film_adi Like ?");
    $film->execute(array('%'.$ara.'%'));
    $f=$film->fetchAll(PDO::FETCH_ASSOC);
    $ff=$film->rowCount();
    ?>
    <main class="Main">
        <div class="main">
            <div class="container">
                <?php
                    if($ff<1){
                        echo '<div style="color:black;margin-top: 20px;text-align: center; font-weight:bold;line-height:23px;padding:5px 5px 5px 5px">
				<strong style="color:red;">Ops!!!</strong><br />
				Aramanızla ilgili bi sonuç bulunamadı.
				</div>';
                    }else{
                        foreach ($f as $l) {
                            ?>
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
                    }
                ?>
            </div>
        </div>
    </main>
    <?php
}
?>