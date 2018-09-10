<section class="recent-listing featured-listing bg-grey">
    <div class="container">
        <div class="row">
            <?php if (Session::has('success')): ?>
                <div class="alert alert-success fade in">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong><?php echo Session::get('success'); ?></strong>
                </div>
            <?php endif; ?>
            <div class="col-md-4 sidebar">

                <?php echo Category::categoryAside(); ?>


                <div class="widget">
                    <h3>Price</h3>
                    <hr>
                    <?php echo Form::vertical_open()->method('GET')->id('filterprice'); ?>

                    <div class="row">
                        <div class="col-xs-6">
                            <input type="number" name="search[price][min]" id="price-min"
                                   value="<?php echo e(Request::input('search.price.min')); ?>"
                                   class="form-control chosen-select"
                                   required="required" placeholder="Min"/>

                        </div>
                        <div class="col-xs-6">
                            <input type="number" name="search[price][max]" id="price-max"
                                   value="<?php echo e(Request::input('search.price.max')); ?>"
                                   class="form-control chosen-select"
                                   required="required" placeholder="Max"/>

                        </div>
                    </div>
                    <?php echo Form::close(); ?>

                </div>


                <div class="widget"><img src="img/adv.jpg" alt="" class="img-responsive center-block"></div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop-view-area">
                            <div class="row">
                                <?php echo Form::vertical_open()->method('GET')->id('filtersort'); ?>

                                <div class="col-md-4 col-sm-4 col-xs-6">
                                    <div class="shop-tab-pill">
                                        <div class="show-label">
                                            <?php echo Form::select('sortBy')
                                                ->options(['name' => 'Name', 'price' => 'Price'])
                                                ->placeholder('Sort by')
                                                ->addClass('chosen-select sort')
                                                ->raw(); ?>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4 col-sm-4 col-xs-6">
                                    <div class="shop-tab-pill">
                                        <div class="show-label">
                                            <?php echo Form::select('sortOrder')
                                                ->options(['ASC' => 'Ascending', 'DESC' => 'Descending'])
                                                ->placeholder('Sort Order')
                                                ->addClass('chosen-select sort')
                                                ->raw(); ?>

                                        </div>
                                    </div>
                                </div>
                                <?php echo Form::close(); ?>


                                <?php echo Form::vertical_open()->method('GET')->id('filtershow'); ?>

                                <div class="col-md-4 col-sm-4 hidden-xs">
                                    <div class="shop-tab-pill show">
                                        <div class="show-label text-right">

                                            <?php echo Form::select('search[show]')
                                                ->options(trans('product::product.options.show'))
                                                ->placeholder('Showing')
                                                ->addClass('form-control chosen-select')
                                                ->id('show')
                                                ->raw(); ?>


                                        </div>
                                    </div>
                                </div>
                                <?php echo Form::close(); ?>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php $__empty_1 = true;
                    $__currentLoopData = $products;
                    $__env->addLoop($__currentLoopData);
                    foreach ($__currentLoopData as $key => $product): $__env->incrementLoopIndices();
                        $loop = $__env->getFirstLoop();
                        $__empty_1 = false; ?>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                            <div class="product-item">
                                <div class="item-img">
                                    <img src="<?php echo url(@$product->defaultImage('md', 'images')); ?>"
                                         class="img-responsive"
                                         alt="">
                                </div>
                                <!--                                     <div class="item-new">
                                                                        <p>New</p>
                                                                    </div> -->
                                <div class="item-links">
                                    <!--   <a href="product-comparison.html" class="links-item"><i class="icon fa fa-random"></i></a> -->
                                    <a href="<?php echo url('products'); ?>/<?php echo @$product['slug']; ?>"
                                       class="links-item"><i
                                                class="fa fa-eye" aria-hidden="true"></i></a>
                                    <a id="<?php echo $product->id; ?>" class="add-cart links-item"><i
                                                class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                    <?php if (user('client.web')): ?>
                                        <?php if (!user('client.web')->product->contains($product->id)): ?>
                                            <a id="<?php echo $product->getRouteKey(); ?>"
                                               class="fav-prop links-item"><i
                                                        class="fa fa-heart-o"></i></a>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <a id="<?php echo $product->getRouteKey(); ?>" class="fav-prop links-item"><i
                                                    class="fa fa-heart-o"></i></a>
                                    <?php endif; ?>
                                </div>
                                <div class="item-sub">
                                    <a href="<?php echo url('products'); ?>/<?php echo @$product['slug']; ?>">
                                        <h5><?php echo @$product->name; ?></h5></a>
                                    <p>$<?php echo @$product->price; ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach;
                    $__env->popLoop();
                    $loop = $__env->getFirstLoop();
                    if ($__empty_1): ?>
                    <?php endif; ?>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop-view-area">
                            <div class="row">

                                <div class="col-md-12 col-sm-3 hidden-xs">
                                    <div class="pagination">
                                        <?php echo $products->render(); ?>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">

    $("#price-max").keypress(function (event) {
        if (event.which == 13) {
            event.preventDefault();
            $("#filterprice").submit();
        }
    });

    $('.sort').on('change', function () {

        $('#filtersort').submit();
    });

    $('#show').on('change', function () {

        $('#filtershow').submit();
    });

    $('.fav-prop').on('click', function () {
        <?php if(user('client.web')): ?>
        var id = $(this).attr('id');
        $.ajax({
            url: "<?php echo e(url('client/product/product/favourite')); ?>/" + id,
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                setTimeout(function () {
                    window.location.reload(1);
                }, 1000);
                toastr.success('Product added to wishlist successfully.');
            }
        });
        <?php else: ?>
        $(location).attr('href', '<?php echo url("client"); ?>');
        <?php endif; ?>
    });


    $(".add-cart").click(function () {
        var id = $(this).attr('id');
        $.ajax({
            type: 'POST',
            url: "<?php echo e(URL::to('carts/cart/add')); ?>",
            data: "id=" + id,
            dataType: 'html',
            success: function (data, textStatus, jqXHR) {
                $(".top-cart-row").load('<?php echo e(url("carts/cart/latest")); ?>');
                toastr.success('Product added to cart successfully.');
            },
            error: function (jqXHR, textStatus, errorThrown) {

            }

        });

    });

</script>

<style type="text/css">
    .links-item {
        cursor: pointer;
    }
</style>