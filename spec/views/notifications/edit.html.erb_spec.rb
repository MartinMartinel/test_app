require 'rails_helper'

RSpec.describe "notifications/edit", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :user => nil,
      :message => "MyString",
      :notification_type => "MyString",
      :sender => "MyString"
    ))
  end

  it "renders the edit notification form" do
    render

    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_message[name=?]", "notification[message]"

      assert_select "input#notification_notification_type[name=?]", "notification[notification_type]"

      assert_select "input#notification_sender[name=?]", "notification[sender]"
    end
  end
end
