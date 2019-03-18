class CouponsController < ApplicationController

  # The coupon codes on the index page should link to their corresponding coupon show page. You should use the link_to method and route helper methods instead of hard-coding an HTML <a> tag.

# Your show page should render the specific coupon passed to the route. E.g., coupons/4 should show the coupon with an ID of 4.

# The new.html.erb view template should render a form that uses the form_tag method.
#
# The form should be wired up to the create action in the controller and, when submitted, should create a new record in the coupons table with the parameters passed through the form.
#
# The controller should use the redirect_to helper method to redirect the user to the show page template for the newly-created coupon.


  def index
    @coupons = Coupon.all
  end


  def new
    @coupon = Coupon.new
  end

  def create

    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(@coupon)


  end

  def show
    @coupon = Coupon.find(params[:id])
  end



end
