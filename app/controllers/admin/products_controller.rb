class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def index
    @products = Product.all.order("created_at DESC")
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      if params[:photos] != nil
        params[:photos]['image'].each do |i|
          @photo = @product.photos.create(:image => i)
        end
      end
      if params[:product_details] != nil
        params[:product_details]['image'].each do |i|
          @product_detail = @product.product_details.create(:image => i)
        end
      end
      redirect_to admin_products_path, notice: "新增商品成功！"
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    if params[:photos] != nil
      @product.photos.destroy_all                          #这会删除photos表中的数据

      params[:photos]['image'].each do |i|                #遍历白名单params中的数据
        @photo = @product.photos.create(:image => i)      #新建
      end

      if params[:product_details] != nil
        @product.product_details.destroy_all

        params[:product_details]['image'].each do |i|
          @product_detail = @product.product_details.create(:image => i)
        end
      end
      @product.update(product_params)
      redirect_to admin_products_path
    elsif @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, alert: "商品已成功删除！"
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :category_id )
  end

end
