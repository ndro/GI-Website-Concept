<?php
  /*
    Template Name: All News
  */
?>

<?php get_header(); ?>

   <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Semua Berita</h2>
                    <!-- <hr class="star-primary"> -->
                    <br><br><br>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 portfolio-item">
                    <a href="newspage.html" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <!-- <i class="fa fa-search-plus fa-3x"></i> -->
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus beatae, nostrum cumque esse ratione maxime, voluptatum suscipit incidunt maiores nesciunt obcaecati debitis, laborum eius quos. Nemo dignissimos animi tempore obcaecati!
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/cabin.png" class="img-responsive" alt="">
                        <div class="item-detail">
                            <h3>Judul Acara</h3>
                            <h4>xx-Agustus-2015</h4>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/cake.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-6 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/circus.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-6 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/game.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-6 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/safe.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-6 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/submarine.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-12 text-center" >
                    <a href="#" class="btn btn-success btn-lg">Lihat Lainnya</a>
                </div>
            </div>
        </div>
    </section>    

<?php get_footer(); ?>

    