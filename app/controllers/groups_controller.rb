class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:show]

  def index
    @groups = Group.all
  end

  def show
    @payments = @group.payments
  end

  def new
    @group = Group.new
  end

  def create
    # @group = current_user.groups.build(group_params)
    @group = Group.new(group_params)
    @group.user_id = current_user.id

    respond_to do |format|
      if @group.save
        flash[:success] = 'Post saved successfully'
        format.html { redirect_to '/groups' }
      else
        flash.now[:error] = 'Error: Post could not be saved'
        format.html { render :new }
      end
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end

  def payment_params
    params.require(:payment).permit(:name, :amount, :group_id)
  end
end
