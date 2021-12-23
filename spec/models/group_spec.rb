require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = create(:user)
    @group = create(:group, user_id: @user.id)
    @payment1 = create(:payment, user_id: @user.id)
    @payment2 = create(:payment, user_id: @user.id)
  end

  it 'name should be present' do
    @group.name = nil
    expect(@group).to_not be_valid
  end

  # it 'icon should be present' do
  #   @group.icon = nil
  #   expect(@group).to_not be_valid
  # end

  # it 'total_amount should be the total amount of purchases' do
  #   @group.payments << @payment1
  #   @group.payments << @payment2
  #   expect(@group.total_amount).to eq(@payment1.amount + @payment2.amount)
  # end
end
