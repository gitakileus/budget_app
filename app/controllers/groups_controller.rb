class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)

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

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
