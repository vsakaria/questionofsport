require 'test_helper'

class AnswersControllerTest < ActionController::TestCase

  test "Logged in user can answer a comment" do
    user = FactoryGirl.create(:user)
    session[:user_id] = user.id
    puts "Test user.id: #{user.id}"
    comment = FactoryGirl.create(:comment)

    assert_equal 0, Answer.count
    post :create, {:comment_id => comment.id, :answer => { :input => "1" }, :format => :json}
    assert_response(200)

    answer = Answer.where(:user_id => user.id, :comment_id => comment.id).first
    assert(answer)
    assert_equal(answer.comment_id, comment.id)
  end

  # test "User can answer a comment" do
  # end
end
