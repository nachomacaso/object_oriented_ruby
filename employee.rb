# employee_1 = {first_name: "Martha", 
#              last_name: "Stewart", 
#              salary: 80000,
#              active: true}

# employee_2 = {first_name: "James", last_name: "Bond", salary: 60000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes $#{employee_1[:salary]}."

# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes $#{employee_2[:salary]}."

class Employee
  attr_reader :first_name, :last_name

  def initialize(employee_input_hash)
    @first_name = employee_input_hash[:first_name]
    @last_name = employee_input_hash[:last_name]
    @salary = employee_input_hash[:salary]
    @active = employee_input_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new({first_name: 'Martha', last_name: "Stewart", salary: 80000, active: true})

puts employee_1.first_name
puts employee_1.last_name
employee_1.print_info

puts employee_1.give_annual_raise
employee_1.print_info