class CommentsController < ApplicationController


  def index
    @comment = Comment.new
    @comments = Comment.get_random_comment
  end



  def create
    @comment = current_user.comments.create(params[:comment])

    respond_to do |format|
      if
        @comment.save
        format.json { render json: @comment }
      else
        format.json { render :status => 500 }
      end
    end
  end

  def show


  end

end
