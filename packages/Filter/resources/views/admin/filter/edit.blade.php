    <div class="nav-tabs-custom">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs primary">
            <li class="active"><a href="#filter" data-toggle="tab">{!! trans('filter::filter.tab.name') !!}</a></li>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-primary btn-sm" data-action='UPDATE' data-form='#filter-filter-edit'  data-load-to='#filter-filter-entry' data-datatable='#filter-filter-list'><i class="fa fa-floppy-o"></i> {{ trans('app.save') }}</button>
                <button type="button" class="btn btn-default btn-sm" data-action='CANCEL' data-load-to='#filter-filter-entry' data-href='{{trans_url('admin/filter/filter')}}/{{$filter->getRouteKey()}}'><i class="fa fa-times-circle"></i> {{ trans('app.cancel') }}</button>

            </div>
        </ul>
        {!!Form::vertical_open()
        ->id('filter-filter-edit')
        ->method('PUT')
        ->enctype('multipart/form-data')
        ->action(URL::to('admin/filter/filter/'. $filter->getRouteKey()))!!}
        <div class="tab-content clearfix">
            <div class="tab-pane active" id="filter">
                <div class="tab-pan-title">  {{ trans('app.edit') }}  {!! trans('filter::filter.name') !!} [{!!$filter->name!!}] </div>
                @include('filter::admin.filter.partial.entry')
            </div>
        </div>
        {!!Form::close()!!}
    </div>