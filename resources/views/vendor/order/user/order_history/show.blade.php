@include('public::notifications')
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h4 class="text-dark  header-title m-t-0"> Details of {!! $order_history['name'] !!} </h4>
        </div>
        <div class="col-md-6">
            <div class='pull-right'>
                <a href="{{ trans_url('/user/order/order_history') }}"
                   class="btn btn-default"> {{ trans('app.back')  }}</a>
                <a href="{{ trans_url('/user/order/order_history') }}/{{ order_history->getRouteKey() }}/edit"
                   class="btn btn-success"> {{ trans('app.edit')  }}</a>
                <a href="{{ trans_url('/user/order/order_history') }}/{{ order_history->getRouteKey() }}/copy"
                   class="btn btn-warning"> {{ trans('app.copy')  }}</a>
                <a href="{{ trans_url('/user/order/order_history') }}/{{ order_history->getRouteKey() }}/delete"
                   class="btn btn-danger"> {{ trans('app.delete')  }}</a>
            </div>
        </div>
    </div>
    <p class="text-muted m-b-25 font-13">
        Your awesome text goes here.
    </p>
    <hr/>

    <div class="row">
        <div class="col-md-4 col-sm-6">
            <div class
            "form-group">
            <label for="order_id">
                {!! trans('order::order_history.label.order_id') !!}
            </label><br/>
            {!! $order_history['order_id'] !!}
        </div>
    </div>
    <div class="col-md-4 col-sm-6">
        <div class
        "form-group">
        <label for="order_status_id">
            {!! trans('order::order_history.label.order_status_id') !!}
        </label><br/>
        {!! $order_history['order_status_id'] !!}
    </div>
</div>
<div class="col-md-4 col-sm-6">
    <div class
    "form-group">
    <label for="notify">
        {!! trans('order::order_history.label.notify') !!}
    </label><br/>
    {!! $order_history['notify'] !!}
</div>
</div>
<div class="col-md-4 col-sm-6">
    <div class
    "form-group">
    <label for="comment">
        {!! trans('order::order_history.label.comment') !!}
    </label><br/>
    {!! $order_history['comment'] !!}
</div>
</div>
</div>
</div>