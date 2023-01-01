class ShopsController < ApplicationController

    def show
        @shop = Shop.find(params[:id])
        @shop_hour = ShopHour.find(params[:id])
    end
    
    def new
        @shop = Shop.new
        @shop_hour = ShopHour.new
        tod = Tod::TimeOfDay.new 0
    end
    

    def create
        @shop = Shop.new(shop_params)
        @shop.save
        redirect_to shop_path(@shop)
    end

    private

    def shop_params
        params.require(:shop).permit(:name, :sunday_opens_at, :sunday_closes_at, :sunday_closes_at, :monday_opens_at, :monday_closes_at, :monday_closes_at, :tuesday_opens_at, :tuesday_closes_at, :tuesday_closes_at, :wednesday_opens_at, :wednesday_closes_at, :wednesday_closes_at, :thursday_opens_at, :thursday_closes_at, :thursday_closes_at, :friday_opens_at, :friday_closes_at, :friday_closes_at, :saturday_opens_at, :saturday_closes_at, :saturday_closes_at)
    end


end
