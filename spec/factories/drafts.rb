# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :draft do
    number 1
    title "MyString"
    blurb "MyString"
    body "MyText"
    status "MyString"
    idea_id 1
  end
end
