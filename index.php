<?php
    include 'ayarlar.php';
    if($islem['bakim']==1){
        include 'bakim.php';
    }else{
        define('güvenlik',true);

        $kvm=$_GET['kvm'];

        switch ($kvm){

            case 'anasayfa':
                include 'header.php';
                include 'nav.php';
                include 'main.php';
                include 'footer.php';

                break;
            case 'hakkımızda':
                include 'header.php';
                include 'hak.php';
                include 'footer.php';
                break;
            case 'iletisim':
                include 'header.php';
                include 'iletisim.php';
                include 'footer.php';
                break;
            case 'öneri':
                include 'header.php';
                include 'oneri.php';
                include 'footer.php';
                break;
            case 'üyelik':
                include 'io.php';
                break;
            case 'Kategori':
                include 'header.php';
                include 'nav.php';
                include 'kategori.php';
                include 'footer.php';
                break;
            case 'imdb':
                include 'header.php';
                include 'nav.php';
                include 'imdb.php';
                include 'footer.php';
                break;
            case 'ara':
                include 'header.php';
                include 'nav.php';
                include 'arama.php';
                include 'footer.php';
                break;
            default:
                include 'header.php';
                include 'nav.php';
                include 'main.php';
                include 'footer.php';
        }
    }


?>