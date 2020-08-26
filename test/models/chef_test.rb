require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "hisham", email: "hisham.example.com")
  end

  test "name should be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end  

  test "name should be less than 30 characters" do
    @chef.chefname = "a"*31
    assert_not @chef.valid?
  end  

  test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end  

  test "email should not be too long" do
    @chef.email = "a"*245 + "@example.com"
    assert_not @chef.valid?
  end

  
  test "should reject invalid email addresses" do
    invalid_emails = %w[hisham@example hisham@example,com hisham.name@gmail. joe@bar+foo.com]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid?, "#{invalids.inspect} should be invalid"
    end
  end
  
  test "email should be unique and case insensitive" do
    duplicate_chef = @chef.dup
    duplicate_chef.email = @chef.email.upcase
    @chef.save
    assert_not duplicate_chef.valid?
  end
end