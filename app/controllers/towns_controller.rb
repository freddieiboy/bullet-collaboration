require 'twilio-ruby'

class TownsController < ApplicationController

	# def customMessage
	# 	@client = Twilio::REST::Client.new

	# 	puts @client.messages.get('SMXXXXXXXX').body
	# end

	Twilio.configure do |config|
 		  config.account_sid = ENV['TWILIO_ACCOUNT_SID']
 		  config.auth_token = ENV['TWILIO_AUTH_TOKEN']
 	end

  def silentHill
  	@client = Twilio::REST::Client.new

  	@client.messages.create(
		  from: '4152376629',
		  to: '4159411497',
		  body: '/tp ' + current_user.email + ' 100 10 100'
		)
  end

  def loudHill
  	@client = Twilio::REST::Client.new

  	@client.messages.create(
		  from: '4152376629',
		  to: '4159411497',
		  body: '/tp ' + current_user.email + ' 200 20 200'
		)
  end
end

