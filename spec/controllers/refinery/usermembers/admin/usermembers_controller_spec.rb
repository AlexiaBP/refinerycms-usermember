require "spec_helper"

describe Refinery::Usermembers::Admin::UsermembersController do
  login_refinery_superuser

  describe "GET index" do
    subject { get :index }

    it { should be_success }
  end
end
