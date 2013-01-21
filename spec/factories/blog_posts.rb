# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_post do
    title "MyString"
    body "MyText"
    image_url "MyString"
    user_id 1
  end
end
