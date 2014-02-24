require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///class11.sqlite3"

require "./models"

get "/" do
	User.create(fname: "Leksi", lname: "Kolanko", email: "atkolanko@gmail.com")
	@user = User.last
	Profile.create(gender: "female", birthday: "May 15, 1990", city: "Brooklyn", religion: "Atheism", education: "Vassar College 2012", employment: "Reverse Artspace")
	@profile = Profile.last
	erb :home
end