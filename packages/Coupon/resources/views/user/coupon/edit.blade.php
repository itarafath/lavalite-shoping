<div class="container-fluid"> 
    <div class="row">
        <div class="col-xs-12">
            <div class="card">
                {!!Form::vertical_open()
                ->id('edit-coupon-coupon')
                ->method('PUT')
                ->files('true')
                ->class('dashboard-form')
                ->action(trans_url(get_guard('url').'/coupon/coupon') .'/'.$coupon->getRouteKey())!!}
                <div class="header with-sub" data-background-color="red">
                    <div class="row">
                        <div class="col-sm-11 title-main">
                            <i class="pe-7s-news-paper"></i>
                            <h4 class="title">Update Coupon</h4>
                            <p class="sub-title">Last updated on {{format_date($coupon['updated_at'])}}</p>
                        </div>
                        <div class="col-sm-1">
                            <a href="{{trans_url(get_guard('url').'/coupon/coupon')}}" rel="tooltip" class="btn btn-white btn-round btn-simple btn-icon pull-right add-new" data-original-title="" title="">
                                    <i class="fa fa-chevron-left"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="content">
                    @include('public::notifications')
                    @include('coupon::user.coupon.partial.entry')
                </div>
                <div class="footer">
                    <button class="btn-primary btn-raised btn btn-sm" type="submit">Update News</button>
                    <a href="{{ trans_url(get_guard('url').'/coupon/coupon') }}" class="btn-danger btn-raised btn btn-sm" >Cancel</a>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>

