require_relative "contacts"
class CRM
	def initialize(name)
		@name = name
	end
	def initialize(name)
		puts "Okay, this CRM has the name " + @name
	end
	
def print_main_menu
		puts "1. Add a contact"
		puts "2. Modify a contact"
		puts "3. Delete a contact"
		puts "4. Display all contacts"
		puts "5. Display contact attribute"
		puts "6. Exit"
		puts "Enter a number: "
end	

def main_menu
	print_main_menue
	user_select = gets.to_i 
	call_option(user_selected)	
end

def call_option(user_selected)
  add_new_contact if user_selected == 1
  modify_existing_contact if user_selected == 2
  delete_existing_conatct if user_selected == 3
  display_all_contacts if user_selected == 4
  display_contact_attribute if user_selected == 5
  exit_contact if user_selected == 6
end

def add_new_contact
	print "Enter First Name: "
	first_name = gets.chomp

	print "Enter Last Name"
	last_name = gets.chomp

	print "Enter Email Address"
	email = gets.chomp

	print "Enter a Note: "
	note = gets.chomp

	contact = Contact.new(first_name, last_name, email, note)
end
end
	
