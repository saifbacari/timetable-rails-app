class ShopsController < ApplicationController

    def show
        @shop = Shop.find(params[:id])
        @shop_hour = ShopHour.find(params[:id])
    end
    
    private

    def shop_params
        params.require(:shop).permit(:name)
    end


end
