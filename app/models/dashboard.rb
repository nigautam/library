class Dashboard < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :index,:bookTitle,:author,:isbn,:userName,:signOutDate, :dueDate, :lateFee,:onHold,:overDue
end
