require "spec_helper"

describe "/refinery/usermembers/admin/usermembers/new" do
  subject { render }

  before do
    assign(:usermember, Refinery::Usermembers::Usermember.new)
    view.stub(from_dialog?: false)
  end

  it { should have_css "form[action='/refinery/usermembers']" }
end
