class ReviewsController < Spree::BaseController
  helper Spree::BaseHelper
  
  before_filter :check_authorization, :except => [:terms]

  def index
    @product = Product.find_by_permalink params[:product_id]
    @approved_reviews = Review.approved.find_all_by_product_id(@product.id) 
  end

  def new
    @product = Product.find_by_permalink params[:product_id] 
    @review = Review.new :product => @product
  end

  # save if all ok
  def create
    @product = Product.find_by_permalink params[:product_id]
    params[:review][:rating].sub!(/\s*stars/,'') unless params[:review][:rating].blank?

    @review = Review.new
    @review.product = @product
    @review.user = current_user if user_signed_in?
    if @review.update_attributes(params[:review])
      flash[:notice] = t('review_successfully_submitted')
      redirect_to (product_path(@product))
    else
      # flash[:notice] = 'There was a problem in the submitted review'
      render :action => "new" 
    end
  end
  
  def terms
  end
  
  private

  def check_authorization
    return true unless Spree::Reviews::Config[:require_login]
    return access_denied unless current_user
  end
  
end
