class Notifier < ApplicationMailer
  default :from => "Mailgun Sandbox <mexiqq@sandbox85de68cfe3374124bbdc3dc74188403e.mailgun.org>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @order = order 
    mail to: order.email, :subject => "Pramatic Store Order Confirmation" 
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped(order)
    @order = order 
    mail to: order.email, :subject => "Pramatic Store Order Shipped" 
  end
end
