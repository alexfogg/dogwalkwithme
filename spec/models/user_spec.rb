# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address         :text
#  phone           :string(255)
#  email           :string(255)
#  image           :text
#  gender          :string(255)
#  age             :integer
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  user = FactoryGirl.create(:user)

  describe '.create' do
    it 'creates a user' do
      user.should be_an_instance_of(User)
      user.name.should eq 'Bob'
      user.email.should eq 'bob@gmail.com'
      expect(user.id).to_not be nil
    end
  end

  describe '#dogs' do
    it 'has dogs' do
      dog = FactoryGirl.create(:dog)
      user.dogs << dog
      user.dogs.count.should eq 1
    end
  end
end
