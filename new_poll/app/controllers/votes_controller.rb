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
    # @question = Question.find(:id)
    @votes = Vote.where(question_id: (params[:id]))
    @trues = @votes.where(answer: true).size
    @falses = @votes.where(answer: false).size
    # @responses = Vote.where(response: @question.response)
    # @responses2 = Vote.where(response: @question.response2)
    # @responses3 = Vote.where(response: @question.response3)
    # @responses4 = Vote.where(response: @question.response4)

  end




#   @user = User.new(params.require(:user).permit(:name))
# @user.save
# redirect_to root_path






  private

  def vote_params
    params.require(:vote).permit(:response, :answer, :id)
  end




end
