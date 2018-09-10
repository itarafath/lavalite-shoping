<section class="about-section bg-grey">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="section_title"><?php echo $page->title; ?></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="white-block description">
                    <p><?php echo $page->content; ?></p>
                </div>
            </div>
            <div class="col-md-6">
                <img src="<?php echo url(@$page->defaultImage('xxl', 'images')); ?>" class="img-responsive" alt="">
            </div>
        </div>
    </div>
</section>
<?php echo Block::get(); ?>