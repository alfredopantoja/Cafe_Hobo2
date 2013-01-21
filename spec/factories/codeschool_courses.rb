# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :codeschool_course do
    name "MyString"
    description "MyText"
    image_url "MyString"
    position 1
  end
end
