<?php

namespace Laracart\Returns\Policies;

use App\User;
use Laracart\Returns\Models\ReturnReason;

class ReturnReasonPolicy
{

    /**
     * Determine if the given user can view the return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function view(User $user, ReturnReason $return_reason)
    {
        if ($user->canDo('returns.return_reason.view') && $user->is('admin')) {
            return true;
        }

        if ($user->canDo('blocks.block.view') 
        && $user->is('manager')
        && $block->user->parent_id == $user->id) {
            return true;
        }

        return $user->id === $return_reason->user_id;
    }

    /**
     * Determine if the given user can create a return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function create(User $user)
    {
        return  $user->canDo('returns.return_reason.create');
    }

    /**
     * Determine if the given user can update the given return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function update(User $user, ReturnReason $return_reason)
    {
        if ($user->canDo('returns.return_reason.update') && $user->is('admin')) {
            return true;
        }

        if ($user->canDo('blocks.block.update') 
        && $user->is('manager')
        && $block->user->parent_id == $user->id) {
            return true;
        }

        return $user->id === $return_reason->user_id;
    }

    /**
     * Determine if the given user can delete the given return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function destroy(User $user, ReturnReason $return_reason)
    {
        if ($user->canDo('returns.return_reason.delete') && $user->is('admin')) {
            return true;
        }

        if ($user->canDo('blocks.block.delete') 
        && $user->is('manager')
        && $block->user->parent_id == $user->id) {
            return true;
        }

        return $user->id === $return_reason->user_id;
    }

    /**
     * Determine if the given user can verify the given return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function verify(User $user, ReturnReason $return_reason)
    {
        if ($user->canDo('returns.return_reason.verify') && $user->is('admin')) {
            return true;
        }

        if ($user->canDo('returns.return_reason.verify') 
        && $user->is('manager')
        && $return_reason->user->parent_id == $user->id) {
            return true;
        }

        return false;
    }

    /**
     * Determine if the given user can approve the given return_reason.
     *
     * @param User $user
     * @param ReturnReason $return_reason
     *
     * @return bool
     */
    public function approve(User $user, ReturnReason $return_reason)
    {
        if ($user->canDo('returns.return_reason.approve') && $user->is('admin')) {
            return true;
        }

        return false;
    }

    /**
     * Determine if the user can perform a given action ve.
     *
     * @param [type] $user    [description]
     * @param [type] $ability [description]
     *
     * @return [type] [description]
     */
    public function before($user, $ability)
    {
        if ($user->isSuperUser()) {
            return true;
        }
    }
}
