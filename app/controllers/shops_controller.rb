class ShopsController < ApplicationController

    def show
        @shop = Shop.find(params[:id])
    end
    
    def new
        @shop = Shop.new
        tod = Tod::TimeOfDay.new 0
    end
    

    def create
        @shop = Shop.new(shop_params)
        @shop.save
        redirect_to shop_path(@shop)
    end

    private

    def shop_params
        params.require(:shop).permit(:name)
    end

    def shop_hours_params
        params.require(:shop_hour).permit(preference: {})
    end

end
