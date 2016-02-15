require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  before(:each) do
    assign(:notifications, [
      Notification.create!(
        :user => nil,
        :message => "Message",
        :notification_type => "Notification Type",
        :sender => "Sender"
      ),
      Notification.create!(
        :user => nil,
        :message => "Message",
        :notification_type => "Notification Type",
        :sender => "Sender"
      )
    ])
  end

  it "renders a list of notifications" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Notification Type".to_s, :count => 2
    assert_select "tr>td", :text => "Sender".to_s, :count => 2
  end
end
