<?php if ($paginator->hasPages()): ?>
    <div class="pagination">

        <?php if ($paginator->onFirstPage()): ?>
            <li class="disabled"><a class="prev btn-primary"><b class="fa fa-ban"></b></a></li>
        <?php else: ?>
            <a class="prev" href="<?php echo e($paginator->previousPageUrl()); ?>" rel="prev"><i
                        class="fa fa-angle-left"></i>Previous</a>
        <?php endif; ?>


        <?php $__currentLoopData = $elements;
        $__env->addLoop($__currentLoopData);
        foreach ($__currentLoopData as $element): $__env->incrementLoopIndices();
            $loop = $__env->getFirstLoop(); ?>

            <?php if (is_string($element)): ?>
                <a><span class="disabled"><?php echo e($element); ?></span></a>
            <?php endif; ?>


            <?php if (is_array($element)): ?>
                <?php $__currentLoopData = $element;
                $__env->addLoop($__currentLoopData);
                foreach ($__currentLoopData as $page => $url): $__env->incrementLoopIndices();
                    $loop = $__env->getFirstLoop(); ?>
                    <?php if ($page == $paginator->currentPage()): ?>
                        <span><?php echo e($page); ?></span>
                    <?php else: ?>
                        <a href="<?php echo e($url); ?>"><?php echo e($page); ?></a>
                    <?php endif; ?>
                <?php endforeach;
                $__env->popLoop();
                $loop = $__env->getFirstLoop(); ?>
            <?php endif; ?>
        <?php endforeach;
        $__env->popLoop();
        $loop = $__env->getFirstLoop(); ?>


        <?php if ($paginator->hasMorePages()): ?>
            <a class="next" href="<?php echo e($paginator->nextPageUrl()); ?>" rel="next">Next<i
                        class="fa fa-angle-right"></i></a>
        <?php else: ?>
            <li class="disabled"><a class="next btn-primary"><b class="fa fa-ban"></b></a></li>
        <?php endif; ?>
    </div>
<?php endif; ?>

                                                       