class ProductMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.in_stock.subject
  #
  def in_stock
    @product = product
    @unsubscribe_url = unsubscribe_url  # Definisikan unsubscribe_url di sini

    @product = params[:product]
    mail to: params[:subscriber].email
  end
end
