require 'rubygems'
require 'faker'

class Employee
  attr_reader :first_name, :last_name

  def initialize(employee_input_hash)
    @first_name = employee_input_hash[:first_name]
    @last_name = employee_input_hash[:last_name]
  end

  def print_info
    puts "#{first_name} #{last_name}"
  end
end

100.times do
  employee = Employee.new({:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name})
  employee.print_info  
end

