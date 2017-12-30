FactoryBot.define do
  factory :color do
    #sequence(:name) { |n| "red#{n}" }
    name "red"
    hex  "0F0F0F"
    rgb  "123a"
  end
end