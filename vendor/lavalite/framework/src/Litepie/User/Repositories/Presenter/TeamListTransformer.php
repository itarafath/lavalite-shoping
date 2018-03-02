<?php

namespace Litepie\User\Repositories\Presenter;

use League\Fractal\TransformerAbstract;
use Hashids;

class TeamListTransformer extends TransformerAbstract
{
    public function transform(\Litepie\User\Models\Team $team)
    {
        return [
            'id'                => $team->getRouteKey(),
            'manager_id'        => @$team->manager->name,
            'name'              => $team->name,
            'description'       => $team->description,
            'status'            => $team->status,
            'created_at'        => format_date($team->created_at),
            'updated_at'        => format_date($team->updated_at),
        ];
    }
}