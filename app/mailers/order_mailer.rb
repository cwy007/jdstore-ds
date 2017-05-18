class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = order.product_lists

    mail(to: @user.email, subject: "[JDStore] 感谢你完成本次下单，以下是你这次购物明细 #{order.token}")
  end
end