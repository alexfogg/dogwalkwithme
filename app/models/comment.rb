# == Schema Information
#
# Table name: comments
#
#  id      :integer          not null, primary key
#  title   :string(255)
#  content :text
#  user_id :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :discussion
  attr_acessible :title, :content, :user_id
end
