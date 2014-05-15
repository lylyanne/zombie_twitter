require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "a status should be no more than 150 characters" do 
 	status = Status.new
 	status.content = statuses(:one).content

 	assert !status.save
 	assert !status.errors[:content].empty?
  end
end
