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
                <?php if(have_posts()) : while (have_posts()) : the_post(); ?>
                <div class="col-sm-6 portfolio-item">
                    <a href="<?php the_permalink() ?>" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <p><?php the_title(); ?></p>
                                <p>By <?php the_author(); ?></p>
                                <p>on <?php echo the_time('l, F jS, Y'); ?></p>
                            </div>
                        </div>
                        <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/cake.png" class="img-responsive" alt="">
                    </a>
                </div>
                <?php endwhile; endif; ?>
            </div>
        </div>
    </section>    

<?php get_footer(); ?>

    