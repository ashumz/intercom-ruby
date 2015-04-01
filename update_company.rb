require "intercom"
require "./secret.rb"

#enter company id
puts "enter company id"
company_id = gets.chomp
company = Intercom::Company.find(:id => company_id)
puts "current company name is #{company.name}. Would you like to continue? [y/n]"
answer = gets.chomp
if answer == "y"
	puts "enter new company name (will override current company name)"
else 
	exit
end
company.name = gets.chomp
company.save
puts "company id #{company_id} is now #{company.name}"
