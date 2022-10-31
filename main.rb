# class name
class Person

  # constructor
  def initialize(name , age, parent_permission )
    # instance variable initialization
    @id
    @name = 'Unkown'
    @age = age
    parent_permission = true
  end

  # Classical get method
  def getters
    @name
  end

  # Classical set method
  def name=(new_name)
    @name = new_name
  end

  def is_of_age?
    return true if @age >= 18
  end

  def can_use_services?
    if (@age >= 18 ||
  end

end

puts 'Please choose an option by enterin a number:
1 - Create a person:'
inputNum = gets.chomp

puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
checkType = gets.chomp

print "Age: "
Age = gets.chomp.to_i

print "Name: "
Name = gets.chomp

print "Has parent permission? [Y/N]: "
Parent_permission = gets.chomp

personValidate = Person.new(Name, Age, Parent_permission)

validateAge = personValidate.is_of_age?

validatePermission = personValidate.can_use_services?

if validateAge
  setName = personValidate.name = Name
else
  setPermission = personValidate.name = Name
end

p personValidate