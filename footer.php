
<footer class="Footer">
    <div class="container">
        <div class="footer-left">
            <h3>KAVİM<span> Film</span></h3>
            <p class="footer-links">
                <a href="?kvm=anasayfa">Ana Sayfa</a>

                <a href="?kvm=hakkımızda">Hakkımızda</a>

                <a href="?kvm=iletisim">İletişim</a>

                <a href="#">S.S.S</a>

            </p>
            <p class="footer-text">© 2020 Tüm Hakları Saklıdır.</p>
        </div>
        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>İnternetin</span> olduğu her yer</p>
            </div>
            <div>
                <i class="fa fa-phone"></i>
                <p><?php echo $islem['iletisim']?></p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="">info@kavim.com</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-hak1">
                <span>Hakkımızda</span>
                <?php echo $islem['aciklama']?>
            </p>
            <div class="footer-icons">
                <a href="<?php echo $islem['facebook']?>"><img src="img/fb.png"></a>
                <a href="<?php echo $islem['twitter']?>"><img src="img/tw.png"></i></a>
                <a href="<?php echo $islem['instagram']?>"><img src="img/ig.png"></i></a>
                
            </div>
        </div>
    </div>
</footer>