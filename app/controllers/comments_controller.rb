class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    @comment.product_id = @product.id
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "评论添加成功"
    else
      flash[:warning] = "评论内容不能为空"
    end
    redirect_to product_path(@product)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :product_id)
  end

end
