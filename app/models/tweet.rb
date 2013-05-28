class Tweet < ActiveRecord::Base
	Twitter.configure do |config|
	  config.consumer_key = 'GIQzUwZdDB5ACfCBenJMQ'
	  config.consumer_secret = 'LBNzZuWH9yDCp2Z2ieT0BbWmcSXS68bYuBZpHsmW7QM'
	  config.oauth_token = '1463450034-r1HS7y7rbAvXRmZ8AKP5xyIR6ShQRVsqNC5zRIe'
	  config.oauth_token_secret = 'VQNX9gLIqhv0ZjB0z42UaFyGCLvVr5USJrGdkUKi0M'
	end

	def read_message
      return "No hay Usuario" if self.user.blank?
      Twitter.user_timeline(self.user).first.text
  	end

  	def read_url
  		return "No hay usuario" if self.url.blank?
  		id = self.url.split('/')
  		Twitter.status(id[5]).text
  	end

  	def update_status
  		return "No hay usuario" if self.message.blank?
  		Twitter.update(self.message)
  		self.message
  	end
end
