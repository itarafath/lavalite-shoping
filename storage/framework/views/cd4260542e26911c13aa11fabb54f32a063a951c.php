<section class="blog-section bg-grey">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="row">
                    <?php $__empty_1 = true;
                    $__currentLoopData = $blogs;
                    $__env->addLoop($__currentLoopData);
                    foreach ($__currentLoopData as $key => $blog): $__env->incrementLoopIndices();
                        $loop = $__env->getFirstLoop();
                        $__empty_1 = false; ?>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="post-card-item">
                                <div class="item-thumb">
                                    <a href="<?php echo url('blogs/' . $blog->slug); ?>">
                                        <img src="<?php echo url($blog->defaultImage('lg', 'images')); ?>" alt=""
                                             class="img-responsive">
                                    </a>
                                </div>
                                <div class="post-card-body">
                                    <div class="post-card-description">
                                        <ul class="list-inline">
                                            <li><i class="fa fa-user"></i> <?php echo @$blog['user']['name']; ?> </li>
                                            <li>
                                                <i class="fa fa-calendar"></i><?php echo format_date(@$blog->posted_on); ?>
                                            </li>
                                            <li><i class="fa fa-eye"></i> <a
                                                        href="<?php echo url('blogs/' . $blog->slug); ?>"
                                                        rel="comments"><?php echo @$blog['viewcount']; ?></a></li>
                                        </ul>
                                        <h3>
                                            <a href="<?php echo url('blogs/' . $blog['slug']); ?>"><?php echo @$blog['title']; ?></a>
                                        </h3>
                                        <p><?php echo strip_tags(substr(@$blog['details'], 0, 90)); ?>..</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach;
                    $__env->popLoop();
                    $loop = $__env->getFirstLoop();
                    if ($__empty_1): ?>
                        <h3>No items found</h3>
                    <?php endif; ?>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <div class="pagination">
                            <?php echo @$blogs->links(); ?>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="widget">
                        <h3>
                            Search
                        </h3>
                        <?php echo Form::open()->method('GET'); ?>

                        <div class="input-group">
                            <input type="text" class="form-control" name="search" placeholder="Search for...">
                            <span class="input-group-btn">
                                             <button class="btn btn-primary" type="submit">Go!</button>
                                        </span>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                    <div class="widget">
                        <h3>
                            Topics
                        </h3>
                        <ul class="categories">
                            <?php echo Blog::categoryList(); ?>

                        </ul>
                    </div>

                    <div class="widget"><img src="<?php echo url('img/adv.jpg'); ?>" alt=""
                                             class="img-responsive center-block"></div>

                    <div class="widget">
                        <?php echo Blog::latest('recent', 3); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>