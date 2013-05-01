FactoryGirl.define do
  factory :comment do
    answer "1"
    comment "Andy Cole scroed the winner goal in UCL Final"
    user_id "1"
  end

  factory :user do
    name "Bob"
  end
end