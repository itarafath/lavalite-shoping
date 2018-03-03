<div class="container-fluid"> 
    <div class="row">
        <div class="col-xs-12">
            
            <div class="card">
                <div class="header with-sub" data-background-color="red">
                    <div class="row">
                        <div class="col-sm-11 title-main">
                            <i class="pe-7s-news-paper"></i>
                            <h4 class="title">{{ trans('app.create')  }} filter_group</h4>
                            <p class="sub-title">{{ trans('app.add')  }} filter_group here...</p>
                        </div>
                        <div class="col-sm-1">
                            <a href="{{trans_url(get_guard('url').'/filter/filter_group')}}" rel="tooltip" class="btn btn-white btn-round btn-simple btn-icon pull-right add-new" data-original-title="" title="">
                                    <i class="fa fa-chevron-left"></i>
                            </a>
                        </div>
                    </div>
                </div>
                {!!Form::vertical_open()
                ->id('create-filter-filter_group')
                ->method('POST')
                ->files('true')
                ->class('dashboard-form')
                ->action(trans_url(get_guard('url').'/filter/filter_group'))!!}
                <div class="content">                
                    @include('public::notifications')
                    @include('filter::user.filter_group.partial.entry')
                </div>
                <div class="footer">
                    <button class="btn-primary btn-raised btn btn-sm">{{ trans('app.create')  }} News</button>
                     <a href="{{ trans_url(get_guard('url').'/filter/filter_group') }}" class="btn-danger btn-raised btn btn-sm"> {{ trans('app.back')  }}</a>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>
