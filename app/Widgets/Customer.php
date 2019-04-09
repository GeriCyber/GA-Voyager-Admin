<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class Customer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Customer::count();
        $string = trans_choice(__("Cliente|Clientes"), $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-people',
            'title'  => "{$count} {$string}",
            'text'   => __(':count :string registrados. Haga clic en el botón de abajo para ver todos los clientes. ', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => __('Ver clientes'),
                'link' => route('voyager.customers.index'),
            ],
            'image' => '../../images/backgrounds/1.jpg',
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return app('VoyagerAuth')->user()->can('browse', new \App\Customer);
    }
}
