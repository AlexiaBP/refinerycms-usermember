FactoryGirl.define do
  factory :refinery_usermember, :class => "Refinery::Usermembers::Usermember" do
    sequence(:email) { |n| "usermember#{n}@factory.com" }
    password "secret123"
  end
end
