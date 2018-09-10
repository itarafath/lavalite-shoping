<h3 class="widget-title">Recent Posts</h3>
<ul class="recent-come">
    <?php $__empty_2 = true;
    $__currentLoopData = $blogs;
    $__env->addLoop($__currentLoopData);
    foreach ($__currentLoopData as $key => $blog): $__env->incrementLoopIndices();
        $loop = $__env->getFirstLoop();
        $__empty_2 = false; ?>
        <li>

            <div class="img-post"><a href="<?php echo url('blogs/' . $blog->slug); ?>"> <img
                            src="<?php echo url($blog->defaultImage('xs', 'images')); ?>" alt=""> </a></div>
            <div class="text-post"><a
                        href="<?php echo url('blogs/' . $blog->slug); ?>"><?php echo $blog['title']; ?></a> <span><i
                            class="fa fa-user"></i> <?php echo @$blog['user']['name']; ?></span></div>
        </li>
    <?php endforeach;
    $__env->popLoop();
    $loop = $__env->getFirstLoop();
    if ($__empty_2): ?>
    <?php endif; ?>
</ul>