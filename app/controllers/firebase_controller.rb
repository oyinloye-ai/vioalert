class FirebaseController < ApplicationController

	def index
		@response = firebase.get("location")
	end

	def create
		@response = firebase.push("location", { :lat => 43.78374, :lng => 1.74384, :tweet => "This is from rails"  })
	end

	def new
		@response = firebase.push("location", { :lat => 43.78374, :lng => 1.74384, :tweet => "This is from rails"  })
	end

	def show
	end

	def update
	end

	def destroy
	end

	private

	def firebase
		base_uri = 'https://vioalert-164116.firebaseio.com/'
		firebase = Firebase::Client.new(base_uri)
	end
end
