require 'sinatra'
require_relative 'change_machine.rb'
enable :sessions

get '/' do 
	erb :input
end

post '/change_display' do 

	total = params[:change_input]

	session[:total] = calculations(total.to_i)

	erb :display, :locals => {:total => session[:total]}
end