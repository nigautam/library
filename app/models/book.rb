class Book < ActiveRecord::Base
  attr_accessible :author, :userName, :bookDescription, :bookTitle, :category, :dueDate, :isbn, :lateFee, :onHold, :overDue, :signOutDate
def checkIn 
  Book.userName = ""
end

end
