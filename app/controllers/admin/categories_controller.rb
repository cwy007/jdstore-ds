class Admin::CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path, notice: "Category 新建成功"
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: "Category 修改成功"
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path, alert: "Category 已经删除"
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_icon)
  end

end
