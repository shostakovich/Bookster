require 'spec_helper'

describe UsersController do
  render_views

  context "User signs up with correct data" do
    before(:each) do
      @params = {:nickname => "Test", :password => "hello", :email => "test@example.com"}
    end

    it 'should render the success template' do
      post :create, :user => @params
      response.should render_template("created")
    end

    it 'should created a new user' do
      @_before = User.count
      post :create, :user => @params
      User.count.should == (@_before + 1)
    end
  end

  context "User signs up with invalid data" do
    it 'should re-render the new template' do
      post :create
      response.should render_template("new")
    end
  end
end
