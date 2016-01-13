class Question < ActiveRecord::Base
  has_many   :votes
  belongs_to :user
  has_many   :images


  def percentage_for_boolean(answer)
    (self.votes.where(answer: answer).size.to_f/ self.votes.size.to_f)*100
  end


  def percentage_for_responses(response)
    (self.votes.where(response: response).size.to_f / self.votes.size.to_f)*100
  end




end
