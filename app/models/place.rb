class Place < ApplicationRecord
	geocoded_by :address

	after_validation :geocode, if: ->(obj){obj.address.present? and obj.address_changed? }

	before_create :add_to_firebase
	# reverse_geocoded_by :latitude, :longitude

	# after_validation :reverse_geocode
	def add_to_firebase
		firebase.push("location", { :lat => latitude, :lng => longitude, :tweet => address ,:created => Firebase::ServerValue::TIMESTAMP })
	end

	def firebase
		base_uri = 'https://vioalert-164116.firebaseio.com/'
		firebase = Firebase::Client.new(base_uri)
	end
end
