class OrderNotifierMailer < ApplicationMailer
  default from: 'Wooden Store <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
 def received(order)
  @order = order
  mail to: order.email, subject: 'Wooden Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
  def shipped
    @order = order
    mail to: order.email, subject: 'Wooden Store Order Shipped'
  end



  def queryReceived(contact)
    @contact = contact
    mail to: contact.email, subject: 'Thanks for contact to Wooden Store'
  end
end
