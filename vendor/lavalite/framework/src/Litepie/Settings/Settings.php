<?php

namespace Litepie\Settings;

use User;

class Settings
{
    /**
     * $setting object.
     */
    protected $setting;

    /**
     * Constructor.
     */
    public function __construct(\Litepie\Settings\Interfaces\SettingRepositoryInterface $setting)
    {
        $this->setting = $setting;
    }

    /**
     * Returns count of settings.
     *
     * @param array $filter
     *
     * @return int
     */


    /**
     * Make gadget View
     *
     * @param string $view
     *
     * @param int $count
     *
     * @return View
     */
    public function gadget($view = 'admin.setting.gadget', $count = 10)
    {

        if (User::hasRole('user')) {
            $this->setting->pushCriteria(new \Litepie\Litepie\Repositories\Criteria\SettingUserCriteria());
        }

        $setting = $this->setting->scopeQuery(function ($query) use ($count) {
            return $query->orderBy('id', 'DESC')->take($count);
        })->all();

        return view('settings::' . $view, compact('setting'))->render();
    }

    public function display($view)
    {
        return view('settings::admin.setting.'.$view);
    }

    public function count(array $filters = null)
    {
        return  $this->model->count();
    }

    public function get($key)
    {        
        return $this->setting->pushCriteria(new \Litepie\Settings\Repositories\Criteria\SettingUserCriteria())
                ->scopeQuery(function($query)use($key){
                   return $query->whereSkey($key)->orderBy('type','DESC');
                })->first();        
    }

    public function set($key, $value, $user_id = 0)
    {
        $data = $this->model->findByField('skey', $key)->first();
        $attributes['value'] = $value;
        $attributes['user_id'] = $user_id;
        $attributes['skey'] = $key;

        if(!empty($data)){
             $this->model->update(["value" => $value], $data->getRouteKey());
             return;
        }
        $this->model->create($attributes);
        return ;
    }
}
