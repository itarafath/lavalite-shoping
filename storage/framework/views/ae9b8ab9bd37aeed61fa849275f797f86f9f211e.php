<section class="bg-grey checkout">
    <div class="container">
        <div class="checkout-box ">
            <div class="row">
                <?php if (Cart::total() > 0): ?>
                    <div class="col-md-8">
                        <div class="panel-group checkout-steps" id="accordion">
                            <div class="panel panel-default checkout-step-01">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
                                            <span>1</span>Checkout Method
                                        </a>
                                    </h4>
                                </div>
                                <?php if (!user('client.web')): ?>
                                    <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-6 col-sm-6 guest-login">
                                                    <h4 class="checkout-subtitle">Guest or Register Login</h4>
                                                    <p class="text title-tag-line">Register with us for future
                                                        convenience:</p>
                                                    <form class="register-form" role="form">
                                                        <div class="radio radio-checkout-unicase">
                                                            <input id="guest" type="radio" name="text" value="guest"
                                                                   checked>
                                                            <label class="radio-button guest-check" for="guest">Checkout
                                                                as Guest</label>
                                                            <br>
                                                            <input id="register" type="radio" name="text"
                                                                   value="register">
                                                            <label class="radio-button" for="register">Register</label>
                                                        </div>
                                                    </form>
                                                    <h4 class="checkout-subtitle outer-top-vs">Register and save
                                                        time</h4>
                                                    <p class="text title-tag-line ">Register with us for future
                                                        convenience:</p>
                                                    <ul class="text instruction pb30">
                                                        <li class="save-time-reg">- Fast and easy check out</li>
                                                        <li>- Easy access to your order history and status</li>
                                                    </ul>
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#collapseTwo" aria-expanded="false"
                                                       class="collapsed btn-upper btn btn-primary checkout-page-button checkout-continue "
                                                       data-key="collapseTwo">Continue</a>

                                                </div>
                                                <div class="col-md-6 col-sm-6 already-registered-login">
                                                    <h4 class="checkout-subtitle">Already registered?</h4>

                                                    <p class="text title-tag-line">Please log in below:</p>
                                                    <?php echo Form::vertical_open()
                                                        ->id('client-login-form'); ?>


                                                    <div class="form-group">
                                                        <label class="info-title" for="exampleInputEmail1">Email Address
                                                            <span>*</span></label>
                                                        <?php echo Form::email('email', '')->raw(); ?>

                                                    </div>
                                                    <div class="form-group">
                                                        <label class="info-title" for="exampleInputPassword1">Password
                                                            <span>*</span></label>
                                                        <?php echo Form::password('password', '')->raw(); ?>

                                                        <a href="#" class="forgot-password">Forgot your Password?</a>
                                                    </div>
                                                    <button type="button"
                                                            class="btn btn-raised btn-primary client-login">Login
                                                    </button>
                                                    <?php echo Form::close(); ?>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            </div>
                            <div class="panel panel-default checkout-step-02">
                                <?php echo Form::vertical_open()
                                    ->id('create-order-order')
                                    ->method('POST')
                                    ->files('true')
                                    ->class('dashboard-form')
                                    ->action(trans_url('client/order/payment/post/')); ?>


                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">
                                        <?php if (user('client.web')): ?>
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                            <?php else: ?>
                                            <a data-toggle="collapse" class="collapsed" data-parent="#accordion"
                                               href="#">
                                                <?php endif; ?>
                                                <span>2</span>Billing Information
                                            </a>
                                    </h4>
                                </div>
                                <?php if (user('client.web')): ?>
                                <div id="collapseTwo" class="panel-collapse collapse in">
                                    <?php else: ?>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <?php endif; ?>

                                        <div class="panel-body">

                                            <div class="radio radio-checkout-unicase">
                                                <input id="address-exist" type="radio" name="billingaddress"
                                                       value="guest" checked class="billing-address">
                                                <label class="radio-button guest-check" for="address-exist">I
                                                    want to use an existing address</label>
                                                <br>
                                                <?php if (user('client.web')): ?>
                                                    <div class="row" id="payment-existing">
                                                        <select name="address_id" class="form-control">
                                                            <option value="<?php echo user('client.web')->name; ?>,<?php echo user('client.web')->address; ?>,<?php echo user('client.web')->district; ?>,<?php echo user('client.web')->city; ?>,<?php echo user('client.web')->country; ?>,<?php echo user('client.web')->state; ?>"
                                                                    selected="selected"><?php echo @user('client.web')->name; ?>

                                                                ,<?php echo @user('client.web')->address; ?>

                                                                ,<?php echo @user('client.web')->district; ?>

                                                                ,<?php echo @user('client.web')->city; ?>

                                                                ,<?php echo @user('client.web')->country; ?>

                                                                ,<?php echo @user('client.web')->state; ?></option>
                                                        </select>
                                                    </div>
                                                <?php endif; ?>
                                                <br>
                                                <input id="address-new" type="radio" name="billingaddress"
                                                       value="register" name="billingaddress"
                                                       class="billing-address">
                                                <label class="radio-button" for="address-new">I want to use a
                                                    new address</label>

                                            </div>
                                            <div class="row hide" id="payment-new">
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[firstname]')
                                                        ->label(trans('order::order.label.payment_firstname'))
                                                        ->placeholder(trans('order::order.placeholder.payment_firstname')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[lastname]')
                                                        ->label(trans('order::order.label.payment_lastname'))
                                                        ->placeholder(trans('order::order.placeholder.payment_lastname')); ?>

                                                </div>
                                                <div class="col-md-12">
                                                    <?php echo Form::text('payment[payment_company]')
                                                        ->label(trans('order::order.label.payment_company'))
                                                        ->placeholder(trans('order::order.placeholder.payment_company')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[payment_address_1]')
                                                        ->label(trans('order::order.label.payment_address_1'))
                                                        ->placeholder(trans('order::order.placeholder.payment_address_1')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[payment_address_2]')
                                                        ->label(trans('order::order.label.payment_address_2'))
                                                        ->placeholder(trans('order::order.placeholder.payment_address_2')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[payment_city]')
                                                        ->label(trans('order::order.label.payment_city'))
                                                        ->placeholder(trans('order::order.placeholder.payment_city')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[payment_postcode]')
                                                        ->label(trans('order::order.label.payment_postcode'))
                                                        ->placeholder(trans('order::order.placeholder.payment_postcode')); ?>

                                                </div>
                                                <div class="col-md-6">

                                                    <?php echo Form::text('payment[payment_country_id]')
                                                        ->label(trans('order::order.label.payment_country_id'))
                                                        ->placeholder(trans('order::order.placeholder.payment_country_id')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('payment[payment_zone_id]')
                                                        ->label(trans('order::order.label.payment_zone_id'))
                                                        ->placeholder(trans('order::order.placeholder.payment_zone_id')); ?>

                                                </div>
                                            </div>
                                        </div>

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                                           aria-expanded="false"
                                           class="collapsed btn-upper btn btn-primary checkout-page-button checkout-continue"
                                           data-key="collapseThree">Continue</a>
                                    </div>
                                </div>


                                <div class="panel panel-default checkout-step-03">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed collapseThree"
                                               data-parent="#accordion" href="#">
                                                <span>3</span>Shipping Information
                                            </a>
                                        </h4>
                                    </div>

                                    <div id="collapseThree" class="panel-collapse collapse">

                                        <div class="panel-body">

                                            <div class="radio radio-checkout-unicase">
                                                <input id="shippingaddress-exist" type="radio"
                                                       name="shippingaddress" value="guest" checked
                                                       class="shipping-address">
                                                <label class="radio-button guest-check" for="shippingaddress-exist">I
                                                    want to use an existing address</label>
                                                <br>
                                                <?php if (user('client.web')): ?>
                                                    <div class="row" id="shipping-existing">
                                                        <select name="shippingaddress_id" class="form-control">
                                                            <option value="<?php echo user('client.web')->name; ?>,<?php echo user('client.web')->address; ?>,<?php echo user('client.web')->district; ?>,<?php echo user('client.web')->city; ?>,<?php echo user('client.web')->country; ?>,<?php echo user('client.web')->state; ?>"
                                                                    selected="selected"><?php echo @user('client.web')->name; ?>

                                                                ,<?php echo @user('client.web')->address; ?>

                                                                ,<?php echo @user('client.web')->district; ?>

                                                                ,<?php echo @user('client.web')->city; ?>

                                                                ,<?php echo @user('client.web')->country; ?>

                                                                ,<?php echo @user('client.web')->state; ?></option>
                                                        </select>
                                                    </div>
                                                <?php endif; ?>
                                                <br>
                                                <input id="shippingaddress-new" type="radio" name="shippingaddress"
                                                       value="register" class="shipping-address">
                                                <label class="radio-button" for="shippingaddress-new">I want to use
                                                    a new address</label>

                                            </div>
                                            <div class="row hide" id="shipping-new">
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[firstname]')
                                                        ->label(trans('order::order.label.payment_firstname'))
                                                        ->placeholder(trans('order::order.placeholder.payment_firstname')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[lastname]')
                                                        ->label(trans('order::order.label.payment_lastname'))
                                                        ->placeholder(trans('order::order.placeholder.payment_lastname')); ?>

                                                </div>
                                                <div class="col-md-12">
                                                    <?php echo Form::text('shipping[payment_company]')
                                                        ->label(trans('order::order.label.payment_company'))
                                                        ->placeholder(trans('order::order.placeholder.payment_company')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[payment_address_1]')
                                                        ->label(trans('order::order.label.payment_address_1'))
                                                        ->placeholder(trans('order::order.placeholder.payment_address_1')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[payment_address_2]')
                                                        ->label(trans('order::order.label.payment_address_2'))
                                                        ->placeholder(trans('order::order.placeholder.payment_address_2')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[payment_city]')
                                                        ->label(trans('order::order.label.payment_city'))
                                                        ->placeholder(trans('order::order.placeholder.payment_city')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[payment_postcode]')
                                                        ->label(trans('order::order.label.payment_postcode'))
                                                        ->placeholder(trans('order::order.placeholder.payment_postcode')); ?>

                                                </div>
                                                <div class="col-md-6">

                                                    <?php echo Form::text('shipping[payment_country_id]')
                                                        ->label(trans('order::order.label.payment_country_id'))
                                                        ->placeholder(trans('order::order.placeholder.payment_country_id')); ?>

                                                </div>
                                                <div class="col-md-6">
                                                    <?php echo Form::text('shipping[payment_zone_id]')
                                                        ->label(trans('order::order.label.payment_zone_id'))
                                                        ->placeholder(trans('order::order.placeholder.payment_zone_id')); ?>

                                                </div>
                                            </div>


                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"
                                               aria-expanded="false"
                                               class="collapsed btn-upper btn btn-primary checkout-page-button checkout-continue "
                                               data-key="collapseFour">Continue</a>


                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default checkout-step-04">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed collapseFour"
                                               data-parent="#accordion" href="#">
                                                <span>4</span>Shipping Method
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseFour" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="radio radio-checkout-unicase">
                                                <input id="shippingmethod" type="radio" name="shipping_method"
                                                       value="Free shipping" checked>
                                                <label class="radio-button" for="shippingmethod">Free
                                                    Shipping</label>
                                            </div>
                                            <?php echo Form::textarea('shipping_method_description')
                                                ->label('Add Comments About Your Order')
                                                ->rows(5)
                                                ->placeholder('Add Comments About Your Order'); ?>

                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"
                                               aria-expanded="false"
                                               class="collapsed btn-upper btn btn-primary checkout-page-button checkout-continue "
                                               data-key="collapseFive">Continue</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default checkout-step-05">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed collapseFive"
                                               data-parent="#accordion" href="#">
                                                <span>5</span>Payment Information
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseFive" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="radio radio-checkout-unicase">
                                                <input id="paymentmethod" type="radio" name="payment_method"
                                                       value="Cash On Delivery" checked>
                                                <label class="radio-button" for="paymentmethod">Cash On
                                                    Delivery</label>
                                            </div>
                                            <div class="radio radio-checkout-unicase">
                                                <input id="paymentmethod" type="radio" name="payment_method"
                                                       value="Paypal">
                                                <label class="radio-button" for="paymentmethod">Paypal</label>
                                            </div>
                                            <?php echo Form::textarea('payment_method_description')
                                                ->label('Add Comments About Your Order')
                                                ->rows(5)
                                                ->placeholder('Add Comments About Your Order'); ?>


                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"
                                               aria-expanded="false"
                                               class="collapsed btn-upper btn btn-primary checkout-page-button checkout-continue "
                                               data-key="collapseSix">Continue</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default checkout-step-06">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed collapseSix"
                                               data-parent="#accordion" href="#">
                                                <span>6</span>Order Review
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseSix" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>Product Name</th>
                                                    <th>Quantity</th>
                                                    <th class="text-right">Unit Price</th>
                                                    <th class="text-right">Total</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php $__empty_1 = true;
                                                $__currentLoopData = Cart::content();
                                                $__env->addLoop($__currentLoopData);
                                                foreach ($__currentLoopData as $key => $row): $__env->incrementLoopIndices();
                                                    $loop = $__env->getFirstLoop();
                                                    $__empty_1 = false; ?>
                                                    <tr>
                                                        <td><?php echo e($row->name); ?></td>
                                                        <td><?php echo e($row->qty); ?></td>
                                                        <td class="text-right">
                                                            $<?php echo e(number_format($row->price, 2)); ?>

                                                            USD
                                                        </td>
                                                        <td class="text-right">
                                                            $<?php echo e(number_format($row->total, 2)); ?>

                                                            USD
                                                        </td>
                                                    </tr>
                                                <?php endforeach;
                                                $__env->popLoop();
                                                $loop = $__env->getFirstLoop();
                                                if ($__empty_1): ?>
                                                <?php endif; ?>
                                                <tr>
                                                    <td colspan="3" class="text-right">Subtotal</td>
                                                    <td class="text-right">$<?php echo e(Cart::total()); ?> USD</td>
                                                </tr>
                                                <?php if ($coupon_code == ''): ?>
                                                    <tr>
                                                        <td colspan="3" class="text-right">Total</td>
                                                        <td class="text-right">$<?php echo e(Cart::subtotal()); ?>USD
                                                        </td>
                                                    </tr>
                                                <?php else: ?>
                                                    <tr>
                                                        <?php if ($coupon->type == 'Percentage'): ?>
                                                            <td colspan="3" class="text-right">Discount %</td>
                                                            <td class="text-right">
                                                                $<?php echo e(number_format($coupon->discount)); ?> USD
                                                            </td>
                                                        <?php else: ?>
                                                            <td colspan="3" class="text-right">Discount</td>
                                                            <td class="text-right">
                                                                $<?php echo e(number_format($coupon->discount, 2)); ?>
                                                                USD
                                                            </td>
                                                        <?php endif; ?>

                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" class="text-right">Total</td>
                                                        <td class="text-right">
                                                            $<?php echo e(number_format($result, 2)); ?>USD
                                                        </td>
                                                    </tr>
                                                <?php endif; ?>
                                                </tbody>
                                                <?php echo Form::hidden('temp_coupon')->value($coupon_code); ?>

                                            </table>
                                            <br>
                                            <button type="submit"
                                                    class="btn-upper btn btn-primary checkout-page-button">Confirm
                                                order
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <?php echo Form::close(); ?>

                            </div>


                        </div>
                        <div class="col-md-4">
                            <div class="checkout-progress-sidebar ">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">Your Checkout Progress</h4>
                                        </div>
                                        <div class="">
                                            <ul class="nav nav-checkout-progress list-unstyled">
                                                <li><a href="#">Billing Address</a></li>
                                                <li><a href="#">Shipping Address</a></li>
                                                <li><a href="#">Shipping Method</a></li>
                                                <li><a href="#">Payment Method</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="col-md-12">
                        <p>Your cart is empty!</p>
                        <br>
                        <a href="<?php echo url('/'); ?>" class="btn btn-upper btn-primary outer-left-xs">Continue</a>
                    </div>
                <?php endif; ?>
            </div>
        </div>
</section>

<script type="text/javascript">
    $(".client-login").click(function () {
        var form = $('#client-login-form');
        var formData = new FormData(form);
        params = form.serializeArray();

        $.each(params, function (i, val) {
            formData.append(val.name, val.value);
        });


        $.ajax({
            url: "<?php echo e(URL::to('client.web/login')); ?>",
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (data, textStatus, jqXHR) {
                window.location.reload(true);
            },
            error: function (jqXHR, textStatus, errorThrown) {

            }
        });
    });


    $('.checkout-continue').on('click', function () {
        var key = $(this).data('key');
        $('.' + key).attr('href', '#' + key);
    });
    $('#accordion').on('show.bs.collapse', function () {
        $('#accordion .in').collapse('hide');
    });

    $(".billing-address").click(function (e) {
        if ($("#address-new").prop("checked") == true) {
            $("#payment-new").removeClass('hide');
            $("#payment-existing").addClass('hide');
        }
        if ($("#address-exist").prop("checked") == true) {
            $("#payment-existing").removeClass('hide');
            $("#payment-new").addClass('hide');
        }
    });

    $(".shipping-address").click(function (e) {
        if ($("#shippingaddress-new").prop("checked") == true) {
            $("#shipping-new").removeClass('hide');
            $("#shipping-existing").addClass('hide');
        }
        if ($("#shippingaddress-exist").prop("checked") == true) {
            $("#shipping-existing").removeClass('hide');
            $("#shipping-new").addClass('hide');
        }
    });

</script>


<style type="text/css">
    sup {
        color: red;
    }
</style>

