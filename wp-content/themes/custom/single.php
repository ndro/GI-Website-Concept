<?php get_header(); ?>
    <div class="modal-content news-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <?php if(have_posts()) : while (have_posts()) : the_post(); ?>
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2><?php the_title(); ?></h2>
                            <hr class="star-primary">
                            <img src="<?php bloginfo('template_directory'); ?>/img/portfolio/cabin.png" class="img-responsive img-centered" alt="">
                            <p><?php the_content(); ?></p>
                        </div>
                    </div>
                </div>
                <?php endwhile; endif; ?>
            </div>
        </div>
<?php get_footer(); ?>