class Employee 
  attr_reader :first_name, :last_name, :salary, :active
  # attr_writer :first_name

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

class Manager < Employee
  def initialize(employee_input_hash)
    super (employee_input_hash) # same as entering below
    # @first_name = employee_input_hash[:first_name]
    # @last_name = employee_input_hash[:last_name]
    # @salary = employee_input_hash[:salary]
    # @active = employee_input_hash[:active]
    @employees = employee_input_hash[:employees]
  end

  def send_report
    puts "Sending Email..."
    # code to send the email
    puts "Email Sent"
  end
end

employee_1 = Employee.new({first_name: 'Martha', 
                           last_name: 'Stewart', 
                           salary: 80000, 
                           active: true})
employee_2 = Employee.new({first_name: 'James', 
                           last_name: 'Bond', 
                           salary: 60000, 
                           active: true})

manager = Manager.new({first_name: 'Manny', 
                       last_name: "Manors", 
                       salary: 100000, 
                       active: true, 
                       employees: [employee_1, employee_2]})

manager.print_info
manager.send_report
p manager

