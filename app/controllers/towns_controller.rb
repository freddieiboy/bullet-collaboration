require 'twilio-ruby'

class TownsController < ApplicationController

	# def customMessage
	# 	@client = Twilio::REST::Client.new

	# 	puts @client.messages.get('SMXXXXXXXX').body
	# end

	Twilio.configure do |config|
 		  config.account_sid = 'AC57b3e4757050faf347be594c087072ac'
 		  config.auth_token = '99c1785f890738c5a9dae9c1d7026818'
 	end

  def silentHill
  	@client = Twilio::REST::Client.new

  	@client.messages.create(
		  from: '4152376629',
		  to: '4159411497',
		  body: '/tp ' + current_user.username + ' 100 10 100'
		)
  end

  def loudHill
  	@client = Twilio::REST::Client.new

  	@client.messages.create(
		  from: '4152376629',
		  to: '4159411497',
		  body: '/tp ' + current_user.username + ' 200 20 200'
		)
  end

  def gotosleep
    @client = Twilio::REST::Client.new

    @client.messages.create(
        from: '4152376629',
        to: '4159411497',
        body: 'Go to sleep everyone! Or log out really quick.'
    )
  end
end

