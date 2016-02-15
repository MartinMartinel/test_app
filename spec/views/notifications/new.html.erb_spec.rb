require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :user => nil,
      :message => "MyString",
      :notification_type => "MyString",
      :sender => "MyString"
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_message[name=?]", "notification[message]"

      assert_select "input#notification_notification_type[name=?]", "notification[notification_type]"

      assert_select "input#notification_sender[name=?]", "notification[sender]"
    end
  end
end
