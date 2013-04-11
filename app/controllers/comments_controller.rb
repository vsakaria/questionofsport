class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comment = Comment.new
    @comments = Comment.all

    # respond_to do |format|
    #   # format.html #index.html.erb
    #   format.html { render :layout => false }
    # end
  end

  def display_all_comments
    @comment = Comment.new
    @comments = Comment.all
    respond_to do |format|
      # format.html #index.html.erb
      format.html { render :layout => false }
    end
  end
  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  def fake_comments
    render :layout => false
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.json { render json: @comment }
      else
        format.html { render action: "index" }
        format.json { render :status => 500 }
      end
    end
  end

  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
