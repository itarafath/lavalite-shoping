<?php

namespace Litepie\Contact\Providers;

use Litepie\Contracts\Workflow\Workflow as WorkflowContract;
use Litepie\Foundation\Support\Providers\WorkflowServiceProvider as ServiceProvider;

class WorkflowServiceProvider extends ServiceProvider
{
    /**
     * The validators mappings for the package.
     *
     * @var array
     */
    protected $validators = [
        
        // Bind Contact validator
        \Litepie\Contact\Models\Contact::class => \Litepie\Contact\Workflow\ContactValidator::class,
    ];

    /**
     * The actions mappings for the package.
     *
     * @var array
     */
    protected $actions = [
        
        // Bind Contact actions
        \Litepie\Contact\Models\Contact::class => \Litepie\Contact\Workflow\ContactAction::class,
    ];

    /**
     * The notifiers mappings for the package.
     *
     * @var array
     */
    protected $notifiers = [
       
        // Bind Contact notifiers
        \Litepie\Contact\Models\Contact::class => \Litepie\Contact\Workflow\ContactNotifier::class,
    ];

    /**
     * Register any package workflow validation services.
     *
     * @param \Litepie\Contracts\Workflow\Workflow $workflow
     *
     * @return void
     */
    public function boot(WorkflowContract $workflow)
    {
        parent::registerValidators($workflow);
        parent::registerActions($workflow);
        parent::registerNotifiers($workflow);
    }
}
