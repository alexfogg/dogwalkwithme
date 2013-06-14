# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  age         :integer
#  breed       :string(255)
#  size        :string(255)
#  image       :text
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :dog, class: Dog do
    name 'Spot'
    age '5'
    breed 'Pitbull'
    description 'A very nice dog'
  end
end
