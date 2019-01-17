require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save post without title" do
    post=Post.new(body: "szia hello");
    assert_not post.save
  end

  test "should not save post when title is <5 character" do
    post=Post.new(title: "szia",body:"halihóhalihó");
    assert_not post.save
  end

  test "save post when title is correct" do
    post=Post.new(title: "Jó kis poszt ez",body: "Ez egy igen érdekes poszt!");
    assert post.save
  end
end
