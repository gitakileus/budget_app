require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'bob', email: 'eri89@gmail.com', encrypted_password: 'awdawd') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'password should be equal or longer than 6 characters' do
    subject.encrypted_password = 'awd'
    expect(subject).to_not be_valid
  end
end
