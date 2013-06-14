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

require 'spec_helper'

describe Dog do
  dog = FactoryGirl.create(:dog)

  describe '.create' do
    it 'creates a Dog' do
      dog.should be_an_instance_of(Dog)
      dog.name.should eq 'Spot'
      dog.age.should eq 5
      dog.breed.should eq 'Pitbull'
      expect(dog.id).to_not be nil
    end
  end

  # describe '#users' do
  #   it 'has users' do
  #     user = User.first
  #     dog.users << user
  #     dog.users.count.should eq 1
  #   end
  # end
end
