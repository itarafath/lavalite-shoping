<?php $__empty_1 = true;
$__currentLoopData = $categories;
$__env->addLoop($__currentLoopData);
foreach ($__currentLoopData as $key => $category): $__env->incrementLoopIndices();
    $loop = $__env->getFirstLoop();
    $__empty_1 = false; ?>
    <li class="<?php echo e((Request::is('*category/' . $category->slug)) ? 'active' : ''); ?>"><a
                href="<?php echo url('blog/category/' . $category->slug); ?>"><?php echo $category->name; ?></a></li>
<?php endforeach;
$__env->popLoop();
$loop = $__env->getFirstLoop(); ?>


                             