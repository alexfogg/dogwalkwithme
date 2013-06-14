class DogWalk <ActiveRecord:: Base
  validates :dog_id, :uniqueness => {:scope=>:walk_id}
end