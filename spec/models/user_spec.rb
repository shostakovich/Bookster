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

  it 'should reject invalid email' do
    should_not allow_value("blah").for(:email)
    should_not allow_value("blah@asdasd").for(:email)
  end

  it 'should reject invalid nicknames' do
    should_not allow_value("<foo>").for(:nickname)
    should_not allow_value("___foo").for(:nickname)
    should_not allow_value("a").for(:nickname)
  end
end
