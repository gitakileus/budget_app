require 'rails_helper'

RSpec.describe Payment, type: :model do
  subject { Payment.new(name: 'payment name', amount: 2) }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
end
