<!-- <?php $__empty_1 = true;
$__currentLoopData = $category;
$__env->addLoop($__currentLoopData);
foreach ($__currentLoopData as $key => $val): $__env->incrementLoopIndices();
    $loop = $__env->getFirstLoop();
    $__empty_1 = false; ?>
<div class="category-gadget-box">
	<ul class="categories">
	    <li class="<?php echo e((Request::is('*categories/' . $val->slug)) ? 'active' : ''); ?>" id="<?php echo $val->id; ?>"><a href="<?php echo url('categories'); ?>/<?php echo e(@$val['slug']); ?>"><?php echo $val->name; ?></a></li>
	    <?php $__empty_2 = true;
    $__currentLoopData = $val['child'];
    $__env->addLoop($__currentLoopData);
    foreach ($__currentLoopData as $key => $child): $__env->incrementLoopIndices();
        $loop = $__env->getFirstLoop();
        $__empty_2 = false; ?>
	    <ul class="categories">
	       <li class="<?php echo e((Request::is('*categories/' . $child->slug)) ? 'active' : ''); ?>" id="<?php echo $child->id; ?>"><a href="<?php echo url('categories'); ?>/<?php echo e(@$child['slug']); ?>">&nbsp;&nbsp;&nbsp;<?php echo $child->name; ?></a></li>
	        <?php $__empty_3 = true;
        $__currentLoopData = $child['child'];
        $__env->addLoop($__currentLoopData);
        foreach ($__currentLoopData as $key => $subchild): $__env->incrementLoopIndices();
            $loop = $__env->getFirstLoop();
            $__empty_3 = false; ?>
		    <ul class="categories">
		       <li class="<?php echo e((Request::is('*categories/' . $subchild->slug)) ? 'active' : ''); ?>" id="<?php echo $subchild->id; ?>"><a href="<?php echo url('categories'); ?>/<?php echo e(@$subchild['slug']); ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $subchild->name; ?></a></li>
		    </ul>
		    <?php endforeach;
        $__env->popLoop();
        $loop = $__env->getFirstLoop();
        if ($__empty_3): ?>
		    <?php endif; ?>
	    </ul>
	    <?php endforeach;
    $__env->popLoop();
    $loop = $__env->getFirstLoop();
    if ($__empty_2): ?>
	    <?php endif; ?>
	</ul> 
</div>
<?php endforeach;
$__env->popLoop();
$loop = $__env->getFirstLoop();
if ($__empty_1): ?>
<div class="category-gadget-box">
    <p>No Category</p>
</div>
<?php endif; ?> -->

<!-- <div class="category-gadget-box">
	<div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Categories</div>
	<ul class="categories">
		<?php $__empty_1 = true;
$__currentLoopData = $category;
$__env->addLoop($__currentLoopData);
foreach ($__currentLoopData as $key => $val): $__env->incrementLoopIndices();
    $loop = $__env->getFirstLoop();
    $__empty_1 = false; ?>
		<li class="<?php echo e((Request::is('*categories/' . $val->slug)) ? 'active' : ''); ?>" id="<?php echo $val->id; ?>">
			<a href="<?php echo url('categories'); ?>/<?php echo e(@$val['slug']); ?>"><?php echo $val->name; ?></a>
			<?php $__empty_2 = true;
    $__currentLoopData = $val['child'];
    $__env->addLoop($__currentLoopData);
    foreach ($__currentLoopData as $key => $child): $__env->incrementLoopIndices();
        $loop = $__env->getFirstLoop();
        $__empty_2 = false; ?>
			<ul class="category-child">
				<li class="<?php echo e((Request::is('*categories/' . $child->slug)) ? 'active' : ''); ?>" id="<?php echo $child->id; ?>">
					<a href="<?php echo url('categories'); ?>/<?php echo e(@$child['slug']); ?>"><?php echo $child->name; ?></a>
					<?php $__empty_3 = true;
        $__currentLoopData = $child['child'];
        $__env->addLoop($__currentLoopData);
        foreach ($__currentLoopData as $key => $subchild): $__env->incrementLoopIndices();
            $loop = $__env->getFirstLoop();
            $__empty_3 = false; ?>
					<ul class="child-subcategory">
						<li class="<?php echo e((Request::is('*categories/' . $subchild->slug)) ? 'active' : ''); ?>" id="<?php echo $subchild->id; ?>">
							<a href="<?php echo url('categories'); ?>/<?php echo e(@$subchild['slug']); ?>"><?php echo $subchild->name; ?></a>
						</li>
					</ul>
					<?php endforeach;
        $__env->popLoop();
        $loop = $__env->getFirstLoop();
        if ($__empty_3): ?>
		    		<?php endif; ?>
				</li>
			</ul>
			<?php endforeach;
    $__env->popLoop();
    $loop = $__env->getFirstLoop();
    if ($__empty_2): ?>
		    <?php endif; ?>
		</li>
		<?php endforeach;
$__env->popLoop();
$loop = $__env->getFirstLoop();
if ($__empty_1): ?>
		<?php endif; ?>
	</ul>
</div>
 -->


<!-- <div class="category-gadget-box">
	<div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Categories</div>
	<ul class="cd-accordion-menu animated">
		<?php $__empty_1 = true;
$__currentLoopData = $category;
$__env->addLoop($__currentLoopData);
foreach ($__currentLoopData as $key => $val): $__env->incrementLoopIndices();
    $loop = $__env->getFirstLoop();
    $__empty_1 = false; ?>
		<li class="has-children">
			<input type="checkbox" name ="<?php echo $val->id; ?>" id="group-<?php echo $key; ?>">
			<label for="group-<?php echo $key; ?>"><?php echo $val->name; ?></label>
			<?php $__empty_2 = true;
    $__currentLoopData = $val['child'];
    $__env->addLoop($__currentLoopData);
    foreach ($__currentLoopData as $keys => $child): $__env->incrementLoopIndices();
        $loop = $__env->getFirstLoop();
        $__empty_2 = false; ?>
	  		<ul>
	  			<li class="has-children">
	  				<input type="checkbox" name ="<?php echo $child->id; ?>" id="<?php echo $val->id; ?>_sub-group-<?php echo $keys; ?>">
					<label for="<?php echo $val->id; ?>_sub-group-<?php echo $keys; ?>"><?php echo $child->name; ?></label>
					<?php $__empty_3 = true;
        $__currentLoopData = $child['child'];
        $__env->addLoop($__currentLoopData);
        foreach ($__currentLoopData as $keyss => $subchild): $__env->incrementLoopIndices();
            $loop = $__env->getFirstLoop();
            $__empty_3 = false; ?>
					<ul>
						<li>
							<input type="checkbox" name ="<?php echo $subchild->id; ?>" id="<?php echo $val->id; ?>_sub-group-level-<?php echo $keyss; ?>">
							<label for="<?php echo $val->id; ?>_sub-group-level-<?php echo $keyss; ?>"><?php echo $subchild->name; ?></label>
						</li>
					</ul>
					<?php endforeach;
        $__env->popLoop();
        $loop = $__env->getFirstLoop();
        if ($__empty_3): ?>
		    		<?php endif; ?>
	  			</li>
	  		</ul>
	  		<?php endforeach;
    $__env->popLoop();
    $loop = $__env->getFirstLoop();
    if ($__empty_2): ?>
	    	<?php endif; ?>
		</li>
		<?php endforeach;
$__env->popLoop();
$loop = $__env->getFirstLoop();
if ($__empty_1): ?>
		<?php endif; ?>
	</ul>
</div> -->

<div class="jquery-accordion-menu clearfix" id="jquery-accordion-menu">
    <div class="jquery-accordion-menu-header">
        Categories
    </div>
    <ul>
        <?php $__empty_1 = true;
        $__currentLoopData = $category;
        $__env->addLoop($__currentLoopData);
        foreach ($__currentLoopData as $key => $val): $__env->incrementLoopIndices();
            $loop = $__env->getFirstLoop();
            $__empty_1 = false; ?>
            <li>
                <a href="<?php echo url('categories'); ?>/<?php echo e(@$val['slug']); ?>">
                    <i class="fa fa-cog"></i><?php echo $val->name; ?>

                </a>
                <?php $__empty_2 = true;
                $__currentLoopData = $val['child'];
                $__env->addLoop($__currentLoopData);
                foreach ($__currentLoopData as $key => $child): $__env->incrementLoopIndices();
                    $loop = $__env->getFirstLoop();
                    $__empty_2 = false; ?>
                    <ul class="submenu">
                        <li>
                            <a href="<?php echo url('categories'); ?>/<?php echo e(@$child['slug']); ?>"><?php echo $child->name; ?></a>
                            <?php $__empty_3 = true;
                            $__currentLoopData = $child['child'];
                            $__env->addLoop($__currentLoopData);
                            foreach ($__currentLoopData as $key => $subchild): $__env->incrementLoopIndices();
                                $loop = $__env->getFirstLoop();
                                $__empty_3 = false; ?>
                                <ul class="submenu">
                                    <li>
                                        <a href="<?php echo url('categories'); ?>/<?php echo e(@$subchild['slug']); ?>">
                                            <?php echo $subchild->name; ?>

                                        </a>
                                    </li>
                                </ul>
                            <?php endforeach;
                            $__env->popLoop();
                            $loop = $__env->getFirstLoop();
                            if ($__empty_3): ?>
                            <?php endif; ?>
                        </li>
                    </ul>
                <?php endforeach;
                $__env->popLoop();
                $loop = $__env->getFirstLoop();
                if ($__empty_2): ?>
                <?php endif; ?>
            </li>
        <?php endforeach;
        $__env->popLoop();
        $loop = $__env->getFirstLoop();
        if ($__empty_1): ?>
        <?php endif; ?>
    </ul>
</div>

<script>

    jQuery(document).ready(function () {
        jQuery("#jquery-accordion-menu").jqueryAccordionMenu();
    });


</script>