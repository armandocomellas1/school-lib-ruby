require_relative 'student'

# class name
class Person

  # constructor
  def initialize(name , age, parent_permission )
    # instance variable initialization
    @id
    @name = name
    @age = age
    parent_permission = parent_permission
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

  def can_use_services?(parent_permission)
    if (@age >= 18 || parent_permission != false)
      return true
    end
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

if Parent_permission == "Y"
  parent_permission = true
else
  parent_permission = false
end

personValidate = Person.new('Unknown', Age, true)

validateAge = personValidate.is_of_age?
validatePermission = personValidate.can_use_services?(parent_permission)

if (validateAge || validatePermission)
  setName = personValidate.name = Name
  puts 'Person created successfully'
else
  p "Student is underage or has not parent permission"
end
