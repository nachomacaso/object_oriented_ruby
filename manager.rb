module Actualize
  class Manager < Employee
    include Emailing

    def initialize(input_options)
      super(input_options)
      @employees = input_options[:employees]
    end

    def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      @employees.each do |employee|
        # employee.active = false ( if you were to use attr_writer)
        employee.fire
      end
    end
  end
end