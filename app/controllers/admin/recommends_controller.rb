class Admin::RecommendsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def index
    @recommends = Recommend.all
  end

  def show
    @recommend = Recommend.find(params[:id])
  end

  def new
    @recommend = Recommend.new
  end

  def create
    @recommend = Recommend.new(recommend_params)
    if @recommend.save
      redirect_to admin_recommends_path, notice: "recommend 新建成功"
    else
      render :new
    end
  end

  def edit
    @recommend = Recommend.find(params[:id])
  end

  def update
    @recommend = Recommend.find(params[:id])
    if @recommend.update(recommend_params)
      redirect_to admin_recommends_path, notice: "recommend 修改成功"
    else
      render :edit
    end
  end

  def destroy
    @recommend = Recommend.find(params[:id])
    @recommend.destroy
    redirect_to admin_recommends_path, alert: "recommend 已经删除"
  end

  private

  def recommend_params
    params.require(:recommend).permit(:name, :image, :description, :link)
  end
end
