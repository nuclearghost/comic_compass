# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    start_time "2014-07-20 18:50:12"
    end_time "2014-07-20 18:50:12"
    title "MyString"
    description "MyText"
    shop nil
  end
end
