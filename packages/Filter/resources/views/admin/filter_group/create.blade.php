    <div class="nav-tabs-custom">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs primary">
            <li class="active"><a href="#details" data-toggle="tab">Filter Group</a></li>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-primary btn-sm" data-action='CREATE' data-form='#filter-filter_group-create'  data-load-to='#filter-filter_group-entry' data-datatable='#filter-filter_group-list'><i class="fa fa-floppy-o"></i> {{ trans('app.save') }}</button>
                <button type="button" class="btn btn-default btn-sm" data-action='CLOSE' data-load-to='#filter-filter_group-entry' data-href='{{trans_url('admin/filter/filter_group/0')}}'><i class="fa fa-times-circle"></i> {{ trans('app.close') }}</button>
            </div>
        </ul>
        <div class="tab-content clearfix">
            {!!Form::vertical_open()
            ->id('filter-filter_group-create')
            ->method('POST')
            ->files('true')
            ->action(URL::to('admin/filter/filter_group'))!!}
            <div class="tab-pane active" id="details">
                <div class="tab-pan-title">  {{ trans('app.new') }}  [{!! trans('filter::filter_group.name') !!}] </div>
                @include('filter::admin.filter_group.partial.entry')
            </div>
            {!! Form::close() !!}
        </div>
    </div>