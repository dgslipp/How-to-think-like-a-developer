class Contact
	attr_reader :id  ##read only for user, adding a unique identifier
	attr_accessor :first_name, :last_name, :email, :notes

	@@contacts = []   ### class level variable   "@@" variable exists for all classes
	@@id = 1

	# def initialize(first_name, last_name, email, notes = nil)   ### on new (notes are optional due to nil)
	# 	@first_name = first_name## set instance variable
	# 	@last_name = last_name
	# 	@email = email
	# 	@notes = notes
	# def initialize(options)   ### on new (notes are optional due to nil)
	# 	@first_name = options[:first_name]## set instance variable
	# 	@last_name = options[:last_name]
	# 	@email = options[:email]
	# 	@notes = options[:notes]
	def initialize(first_name, last_name, options = {})   ### on new (notes are optional due to nil)
		@id = @@id
		@first_name = first_name## can not be ignored
		@last_name = last_name
		@email = options[:email]
		@notes = options[:notes]
		
		@@id += 1

	end	
	def self.create(first_name, last_name, options = {})  ##method to 
		new_contact = Contact.new(first_name, last_name, options)
		@@contact << new_contact
	end
	def self.all
		@@contacts   ### Contact.all  or Contact.all.each
	end
	def full_name  #### Contact.all.first.first_name  - provide full name of user
		"#{first_name} #{last_name}"
	end
	# def first_name  ## getter (what attr_accessor does)
	# 	@first_name
	# end

	# def first_name=(new_first_name)    ## setter
	# 	@first_name = new_first_name)
	# end
end


require_relative 'contact.rd'   ### how to use the contact program... loads the contact.rb
class CRM ### shows the user the menue - not linked to the contact class ###crm.print_main_menue
	# def print_main_menu
	# 	puts "1. Add a contact"
	# 	puts "2. "
	# end
	def initialize(name)
		@name = name
	end
	def print_main_menu
		puts "1. Add a contact"
		puts "2. Modify a contact"
		puts "3. Display all contacts"
		puts "4. Display contact"
		puts "5. Display contact attribute"
		puts "6. Delete a contact"
		puts "7. Exit"
	end	





		"
	def main_menu
		while true
			print_main_menu
			print "Choose and option: "
			user_input = gets.chomp.to_i
			break if user_input ==7
			choose_option(user_input)
	end
	def choose_option(input)
		case input
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then display_all_contacts
		when 4 then display

		when 7 exit
	end
	def add_contact
		print "first_name"
		first_name = gets.chomp

		print "last_name"
		last_name = gets.chomp


	my_awesome_crm = CRM.



end


