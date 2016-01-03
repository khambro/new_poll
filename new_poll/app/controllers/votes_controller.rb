class VotesController <ApplicationController


  def index
    @votes = Vote.all
    @trues = Vote.where(answer: true).size
    @falses = Vote.where(answer: false).size
    @questions = Question.all
  end



  def create
    @question = Question.find(params[:id])
    @vote = Vote.new(vote_params)
    @vote.question_id = @question.id
    @vote.response = (params[:vote][:response])
    if @vote.save
      redirect_to "/question/#{@question.id}/results"
    else
      puts @vote.errors
    end
  end

  def all
    @questions = Question.all
    @votes = Vote.where(question_id: (params[:id]))
  end

  def display
    @questions = Question.all
    p = self.votes.where(response: self.response).size.to_f/(self.votes.size.to_f)*100
    p
  end






  private

  def vote_params
    params.require(:vote).permit(:response, :answer, :id)
  end




end
