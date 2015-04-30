require 'twilio-ruby'


class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
  	twilio_account_sid = "AC57b3e4757050faf347be594c087072ac"
    twilio_auth_token = "99c1785f890738c5a9dae9c1d7026818"

    client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token
    message = client.messages.create from: '4152376629', to: '4159411497', body: '/tp aarynelle 200 30 200'
    render plain: message.status
  end

end