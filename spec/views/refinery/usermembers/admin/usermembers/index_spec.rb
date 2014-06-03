require "spec_helper"

describe "/refinery/usermembers/admin/usermembers/index" do
  subject { render }

  let(:usermember) { FactoryGirl.create(:refinery_usermember) }

  before do
    view.stub(refinery_icon_tag: "")
  end

  before do
    view.stub(searching?: false)
    view.stub(from_dialog?: false)
    assign(:usermembers, [usermember])
  end

  it { should have_css "#usermember_#{usermember.id}" }
end
