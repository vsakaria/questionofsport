class AnswersController < ApplicationController


  def create
    # @answer = Answer.new(params[:answer, :user_id :comment_id])
    #  current.answers.create(params[:answer])
    value = params[:answer][:input]
    @answer = Answer.new(:input => value, :user_id => current_user.id,
                         :comment_id => params[:comment_id])
    puts "Controller current_useid: #{current_user.id}"

    respond_to do |format|
      if @answer.save
        p @answer
        format.json { render json: @answer }
      else
        format.json { render :status => 500 }
      end
    end
  end

end
