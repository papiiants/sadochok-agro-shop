<!-- Cart informer (given by Ajax) -->
{* If you want to display the total price- uncomment the code*}
{if $cart->isEmpty === false}
    <a href="{url_generator route='cart'}" class="header_informers__link d-flex align-items-center">
        <img
          src="./images/cart.png"
          alt=""
          width="30"
          height="30"
        />
        <span class="cart_counter">{$cart->total_products}</span>
        {*<span class="cart_total">{($cart->total_price)|convert} {$currency->sign|escape}</span>*}
    </a>
{else}
    <div class="header_informers__link d-flex align-items-center">
        <i class="d-flex align-items-center fa fa-shopping-cart"></i>
        <span class="cart_counter">{$cart->total_products}</span>
        {*<span class="cart_total">{($cart->total_price)|convert} {$currency->sign|escape}</span>*}
    </div>
{/if}
