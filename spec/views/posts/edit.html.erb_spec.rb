require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :content => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_content[name=?]", "post[content]"
    end
  end
end
