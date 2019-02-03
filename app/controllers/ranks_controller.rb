class RanksController < ApplicationController

def index

@records =  Record.all

@recordsarray = @records.group_by{|e| [e.student_id]}

@stu_count = Student.count
@sub_count = Subject.count
# recordsarray.inject(0){|sum,x| sum + x }

# binding.pry
# @seiz = Seiz.where('SeizToCloseDate BETWEEN ? AND ?',@from_date.beginning_of_month, @to_date.end_of_month).group_by{|e| [e.Month, e.Year]}



end




end
