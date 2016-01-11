class Question < ActiveRecord::Base
  has_many   :votes
  belongs_to :user
  has_many   :images
end