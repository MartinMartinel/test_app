require 'rails_helper'

RSpec.describe "notifications/show", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :user => nil,
      :message => "Message",
      :notification_type => "Notification Type",
      :sender => "Sender"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/Notification Type/)
    expect(rendered).to match(/Sender/)
  end
end
