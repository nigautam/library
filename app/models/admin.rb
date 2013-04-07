class Admin < ActiveRecord::Base
  attr_accessible :index,:bookTitle,:author,:isbn,:userName,:signOutDate, :dueDate, :lateFee,:onHold,:overDue
  end
