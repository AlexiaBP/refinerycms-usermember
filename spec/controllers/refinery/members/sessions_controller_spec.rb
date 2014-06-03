require "spec_helper"

describe Refinery::Usermembers::SessionsController do
  before do
    FactoryGirl.create(:refinery_user)
    @request.env["devise.mapping"] = Devise.mappings[:usermember]
  end

  describe "GET new" do
    subject { get :new }

    it { should be_success }
  end

  describe "POST create" do
    subject { post :create, usermember: {email: "nobody@nowhere.net", password: "secret123"} }

    before do
      FactoryGirl.create(:refinery_usermember, email: "nobody@nowhere.net", password: "secret123")
    end

    it { should redirect_to "/" }
    it { should_not render_template "new" }
  end
end
