require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save comment when username length<1" do
    comment=Comment.new(body: "Jót írtál");
    assert_not comment.save
  end

  test "should not save comment without add post parameter" do
    comment=Comment.new(username: "Bütyök Gyula",body: "Ez jóska kommentje");
    assert_not comment.save
  end
end
