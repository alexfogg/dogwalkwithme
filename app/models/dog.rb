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

class Dog < ActiveRecord::Base
  attr_accessible :name, :age, :breed, :size, :image, :description
  belongs_to :user, :dependent => :destroy
  has_and_belongs_to_many :walks
  mount_uploader :image, DogImageUploader
  validate :dog_limit

  def dog_limit
    if self.user.dogs.count >= 1
      errors.add(:base, "You may only add 1 dog")
    end
  end
end
