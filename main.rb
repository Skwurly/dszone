require 'sinatra'


	# root route and intro page
get '/' do
	erb :index
end

=begin
 '/hero_generator', generates the data from files in public directory
 and pushes them to the view hero_generator.erb.
=end

get '/hero_generator' do
	@name = File.readlines('names.txt').sample.chomp
	@hp = 10
	@d4, @d8, @d12 = ['Warrior','Wizard','Explorer'].shuffle
	@d6, @d10 = File.readlines('stuff.txt').sample(2)
	erb :hero_generator
end

get '/quests' do
	erb :quests
end


get '/links' do
	erb :links
end

get '/print_hero' do
	erb :print
end
