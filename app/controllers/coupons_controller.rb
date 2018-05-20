class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.create
    @coupon.store: params[:store]
    @coupon.coupon_code: params[:coupon_code]
    redirect_to coupon_path(@coupon)
  end

end
