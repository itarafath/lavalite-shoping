<div class="container-fluid"> 
    <div class="row">
        <div class="col-xs-12">
            
            <div class="card">
                <div class="header with-sub" data-background-color="red">
                    <div class="row">
                        <div class="col-sm-11 title-main">
                            <i class="pe-7s-news-paper"></i>
                            <h4 class="title">{{ trans('app.create')  }} cart</h4>
                            <p class="sub-title">{{ trans('app.add')  }} cart here...</p>
                        </div>
                        <div class="col-sm-1">
                            <a href="{{trans_url(get_guard('url').'/cart/cart')}}" rel="tooltip" class="btn btn-white btn-round btn-simple btn-icon pull-right add-new" data-original-title="" title="">
                                    <i class="fa fa-chevron-left"></i>
                            </a>
                        </div>
                    </div>
                </div>
                {!!Form::vertical_open()
                ->id('create-cart-cart')
                ->method('POST')
                ->files('true')
                ->class('dashboard-form')
                ->action(trans_url(get_guard('url').'/cart/cart'))!!}
                <div class="content">                
                    @include('public::notifications')
                    @include('cart::user.cart.partial.entry')
                </div>
                <div class="footer">
                    <button class="btn-primary btn-raised btn btn-sm">{{ trans('app.create')  }} News</button>
                     <a href="{{ trans_url(get_guard('url').'/cart/cart') }}" class="btn-danger btn-raised btn btn-sm"> {{ trans('app.back')  }}</a>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
