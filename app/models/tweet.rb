class Tweet < ActiveRecord::Base
	Twitter.configure do |config|
	  config.consumer_key = 'GIQzUwZdDB5ACfCBenJMQ'
	  config.consumer_secret = 'LBNzZuWH9yDCp2Z2ieT0BbWmcSXS68bYuBZpHsmW7QM'
	  config.oauth_token = '1463450034-1NPYyV77gzhTDxiPzwwSVZl4p2ZCrf68giVK7UL'
	  config.oauth_token_secret = 'krAWo4r2u1re49MvL0DyWEeiYaUCAV4uCXFMVnzvY'
	end
end
