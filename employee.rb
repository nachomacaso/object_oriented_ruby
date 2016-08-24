class Employee 
  attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :first_name

  def initialize(employee_input_hash)
    @first_name = employee_input_hash[:first_name]
    @last_name = employee_input_hash[:last_name]
    @salary = employee_input_hash[:salary]
    @active = employee_input_hash[:active]
  end

  # same as attr_reader
  # def first_name
  #  @first_name
  # end

  # same as attr_writer
  # def first_name=(new_value)
  #  @first_name = new_value
  # end

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