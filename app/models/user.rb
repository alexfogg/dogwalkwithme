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

class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name, :image, :address, :phone, :age, :gender
  has_secure_password
  has_one :dog
  has_many :walks, :through => :dogs
  has_and_belongs_to_many :discussions

  validates :password, :presence => true,
                     :confirmation => true,
                     :length => {:within => 6..40},
                     :on => :create

  validates :password_confirmation, :presence => true

  validates :email, :presence => true,
              :uniqueness => true

  validates :name, :presence => true


end
