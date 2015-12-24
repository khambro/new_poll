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
    if @vote.save
      redirect_to show_path
    else
      puts @vote.errors
    end
  end



#   @user = User.new(params.require(:user).permit(:name))
# @user.save
# redirect_to root_path






  private

  def vote_params
    params.require(:vote).permit(:answer, :id)
  end




end
