require 'sinatra'
require 'json'
require 'mailgun'

post '/' do
  data = JSON.parse(request.body.read)
  mailgun_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']

  message_params = {:from => 'noreply@example.com',
                    :to => data["to"],
                    :subject => data["subject"],
                    :text => data["body"]
  }

  mailgun_client.send_message ENV['MAILGUN_TEST_DOMAIN'], message_params
end