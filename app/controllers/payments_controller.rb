class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show]

  def index
    @payments = Payment.all
  end

  def show; end

  def new
    @payment = Group.find_by_id(params[:group_id]).payments.new
  end

  def create
    @payment = Payment.new(payment_params)
    @payment.user_id = current_user.id
    @payment.group_id = Group.find_by_id(params[:group_id]).id

    respond_to do |format|
      if @payment.save
        flash[:success] = 'Post saved successfully'
        format.html { redirect_to group_path(@payment.group_id) }
      else
        flash.now[:error] = 'Error: Post could not be saved'
        format.html { render :new }
      end
    end
  end

  private

  def set_payment
    @payment = Payment.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
