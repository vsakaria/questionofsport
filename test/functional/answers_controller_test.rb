require 'test_helper'

class AnswersControllerTest < ActionController::TestCase

  test "User can answer a comment" do
    assert_equal 0, Answer.count
    post :create, {:comment_id => "1", :answer => {:user_id => "1", :comment_id => "1", :answer => "1" } }
    assert_equal 1, Answer.count
  end

end
