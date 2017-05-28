class ProductsController < ApplicationController

  def index
    if params[:category].present?
      @category = Category.find_by_name(params[:category])
      @products = Product.where(category_id: @category.id)
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos
    @comment = Comment.new
    @comments = @product.comments.order("created_at DESC")
    @product_details = @product.product_details
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此商品"
    end
    redirect_to :back
  end
end
