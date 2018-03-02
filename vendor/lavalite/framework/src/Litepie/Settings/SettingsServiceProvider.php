<?php

namespace Litepie\Settings;

use Illuminate\Support\ServiceProvider;

class SettingsServiceProvider extends ServiceProvider
{
    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = false;

    /**
     * Bootstrap the application events.
     *
     * @return void
     */
    public function boot()
    {
        // Load view
        $this->loadViewsFrom(__DIR__ . '/resources/views', 'settings');

        // Load translation
        $this->loadTranslationsFrom(__DIR__ . '/resources/lang', 'settings');

        // Call pblish redources function
        $this->publishResources();

    }

    /**
     * Register the service provider.
     *
     * @return void
     */
    public function register()
    {
        // Bind facade
        $this->app->bind('settings', function ($app) {
            return $this->app->make('Litepie\Settings\Settings');
        });

        // Bind Setting to repository
        $this->app->bind(
            \Litepie\Settings\Interfaces\SettingRepositoryInterface::class,
            \Litepie\Settings\Repositories\Eloquent\SettingRepository::class
        );

        $this->app->register(\Litepie\Settings\Providers\AuthServiceProvider::class);
        $this->app->register(\Litepie\Settings\Providers\EventServiceProvider::class);
        $this->app->register(\Litepie\Settings\Providers\RouteServiceProvider::class);
        // $this->app->register(\Litepie\Settings\Providers\WorkflowServiceProvider::class);
    }

    /**
     * Get the services provided by the provider.
     *
     * @return array
     */
    public function provides()
    {
        return ['settings'];
    }

    /**
     * Publish resources.
     *
     * @return void
     */
    private function publishResources()
    {
        // Publish configuration file
        $this->publishes([__DIR__ . '/config/config.php' => config_path('litepie/settings.php')], 'config');

        // Publish admin view
        $this->publishes([__DIR__ . '/resources/views' => base_path('resources/views/vendor/settings')], 'view');

        // Publish language files
        $this->publishes([__DIR__ . '/resources/lang' => base_path('resources/lang/vendor/settings')], 'lang');

        // Publish migrations
        $this->publishes([__DIR__ . '/database/migrations/' => base_path('database/migrations')], 'migrations');

        // Publish seeds
        $this->publishes([__DIR__ . '/database/seeds/' => base_path('database/seeds')], 'seeds');

        // Publish public files and assets.
        $this->publishes([__DIR__ . '/public/' => public_path('/')], 'public');
    }
}
