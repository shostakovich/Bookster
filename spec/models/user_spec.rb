require 'spec_helper'

describe User do
  it { should validate_presence_of(:nickname) }
  it { should validate_presence_of(:password) }
  it { should validate_presence_of(:email) }

  it 'should have a unique nickname' do
    User.new(:nickname => "hello", :password => "foo", :email => "test@example.com").save()
    should validate_uniqueness_of(:nickname)
  end

  it 'should have a unique email' do
    User.new(:nickname => "hello", :password => "foo", :email => "test@example.com").save()
    should validate_uniqueness_of(:email)
  end
end
