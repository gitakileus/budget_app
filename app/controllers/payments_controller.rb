class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = current_user.payments.build(payment_params)

    respond_to do |format|
      if @payment.save
        flash[:success] = 'Post saved successfully'
        format.html { redirect_to '/payments' }
      else
        flash.now[:error] = 'Error: Post could not be saved'
        format.html { render :new }
      end
    end
  end

  def payment_params
    params.require(:payment).permit(:name, :icon)
  end
end
