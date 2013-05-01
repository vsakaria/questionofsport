require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    user = FactoryGirl.create(:user)
    session[:user_id] = user.id
    @comment = FactoryGirl.create(:comment)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { answer: @comment.answer, comment: @comment.comment, rightanswers: @comment.rightanswers, wronganswers: @comment.wronganswers }, :format => :json
    end

    assert_response(200)
  end

end
