class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    render action: :show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    redirect_to shops_url
  end

  def edit
    @shop = Shop.find(params[:id])
    @shop.image.cache! unless @shop.image.blank?
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to shops_url
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_url
  end

private
  def shop_params
    params.require(:shop).permit(:title, :image)
  end
end
