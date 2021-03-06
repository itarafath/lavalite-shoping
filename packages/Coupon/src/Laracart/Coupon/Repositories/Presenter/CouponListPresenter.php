<?php

namespace Laracart\Coupon\Repositories\Presenter;

use Litepie\Repository\Presenter\FractalPresenter;

class CouponListPresenter extends FractalPresenter {

    /**
     * Prepare data to present
     *
     * @return \League\Fractal\TransformerAbstract
     */
    public function getTransformer()
    {
        return new CouponListTransformer();
    }
}