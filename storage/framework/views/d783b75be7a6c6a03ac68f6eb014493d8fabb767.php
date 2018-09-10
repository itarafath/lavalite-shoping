<section class="what-we-do">
    <div class="container">
        <div class="row">
            <h2 class="section_title">What we do?</h2>
            <?php $__empty_1 = true;
            $__currentLoopData = $blocks;
            $__env->addLoop($__currentLoopData);
            foreach ($__currentLoopData as $key => $block): $__env->incrementLoopIndices();
                $loop = $__env->getFirstLoop();
                $__empty_1 = false; ?>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <div class="service_block">
                        <div class="block_icon"><i class="<?php echo $block['icon']; ?>"></i></div>
                        <h3><?php echo $block['name']; ?></h3>
                        <p><?php echo $block['description']; ?></p>
                    </div>
                </div>
            <?php endforeach;
            $__env->popLoop();
            $loop = $__env->getFirstLoop();
            if ($__empty_1): ?>
            <?php endif; ?>
        </div>
    </div>
</section>