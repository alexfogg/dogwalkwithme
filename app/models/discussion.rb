# == Schema Information
#
# Table name: discussions
#
#  id      :integer          not null, primary key
#  title   :string(255)
#  walk_id :integer
#

class Discussion < ActiveRecord::Base
  belongs_to :walk
  has_many_and_belongs_to_many :users
  has_many :comments
  attr_accessible :title, :walk_id
end
