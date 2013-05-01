class AnswersController < ApplicationController


  def create
    # @answer = Answer.new(params[:answer, :user_id :comment_id])
    #  current.answers.create(params[:answer])
    value = params[:answer] == "yes"
    @answer = Answer.new(:answer => value)
    @answer.user = current_user
    @answer.comment = Comment.find(params[:comment_id])
    @answer.answer =

    respond_to do |format|
      if @answer.save
        format.html { redirect_to root_url, notice: 'Answer was successfully created.' }
        format.json { render json: root_url, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

end
