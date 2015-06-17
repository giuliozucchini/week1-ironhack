
class Payroll
 def update( changed_employee )
   puts("Cut a new check for #{changed_employee.name}!")
   puts("His salary is now #{changed_employee.salary}!")
 end
end


class Pension_amount
 def update( changed_employee )
   puts("The pension of #{changed_employee.name} is now of #{changed_employee.pension}!")
 end
end


class Employee
 attr_reader :name, :title
 attr_reader :salary, :pension

 def initialize( name, title, salary, payroll, pension, pension_amount) 
   @name = name
   @title = title
   @salary = salary
   @payroll = payroll
   @pension = pension
   @pension_amount = pension_amount
 end

 def salary=(new_salary) 
    @salary = new_salary 
    @payroll.update(self)
 end

 def pension=(new_pension) 
    @pension = new_pension 
    @pension_amount.update(self)
 end

end

payroll = Payroll.new
fred = Employee.new('Fred', 'Crane Operator', 30000, payroll, 50, pension_amount)
fred.salary = 35000
fred.pension = 100.000


