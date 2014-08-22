require_relative 'contact.rb'
require_relative 'rolodex.rb'

# As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
class CRM
  attr_accessor :name

  def self.run(name)
    crm = CRM.new(name) # ==========> initialize
    crm.main_menu
  end

  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

  def print_main_menu
    puts "[1] Add a contact"
    puts "[2] Modify a contact"
    puts "[3] Display all contacts"
    puts "[4] Display one contact"
    puts "[5] Display a contact's attribute"
    puts "[6] Delete a contact"
    puts "[7] Exit"
    puts "Choose an option by entering a number:"
  end

  def main_menu
    while true
      print_main_menu
      input = gets.chomp.to_i
      return if input == 7
      call_option(input)
    end
  end

  def call_option(input)
    if input == 1
      add_contact
    elsif input == 2
      puts "Modify a contact"
    elsif input == 3
      puts "Display all contacts"
    elsif input == 4
      puts "Display one contact"
    elsif input == 5
      puts "Display an attribute"
    elsif input == 6
      puts "Delete a contact"
    elsif input == 7
      puts "EXIT!"
    else
      puts "Sorry that's not an option"
    end

    # case input
    # when 1
    #   puts "Add a contact"
    # end
  end

  def add_contact
    puts "First Name"
    first_name = gets.chomp
    puts "Last Name"
    last_name = gets.chomp
    puts "Email"
    email = gets.chomp
    puts "Notes"
    notes = gets.chomp

    contact = Contact.new(first_name, last_name, email, notes)
    @rolodex.add_contact(contact)

    puts "Added #{contact.id} #{contact.first_name} #{contact.last_name} to Rolodex"
  end
end

CRM.run('My CRM')


# As a user, if 'add' is typed, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.

# As a user, if 'modify' is typed, I am prompted to enter a contact attribute to be modified.
# As a user, when an attribute is entered, I am prompted to type 'yes' or 'no' to confirm my selection.
# As a user, if 'yes' is typed, I am prompted to change 'id', 'firstname', 'lastname' and 'email'.
# As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.
# As a user, if 'no' is typed, I am returned back to the main menu.
# As a user, if 'display all' is typed, I am shown all of the contacts that exist.
# As a user, if 'display contact' is typed, I am shown a particular contact.
# As a user, if 'display attribute' is typed, I am prompted to enter an attribute so that I can see all of the contacts according to that attribute.
# As a user, if 'delete' is typed, I am prompted to enter an attribute value of the contact to be deleted.
# As a user, if 'exit' is typed, I am exited out of the program and returned to the command line.