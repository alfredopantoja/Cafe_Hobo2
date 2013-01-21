# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :portfolio_site do
    name "MyString"
    description "MyText"
    screenshot_url "MyString"
    site_url "MyString"
    position 1
  end
end
