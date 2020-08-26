require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  def setup 
    @request = Request.new(name: "Test Name", 
      phone: "+79276021120", 
      email: "example@gmail.com",
      text: "Some text")
  end

  test "should be valid" do 
    assert @request.valid?
  end 

  test "name should be present and name shouldn't be too long" do 
    @request.name = "       "
    assert_not @request.valid? 
    @request.name = "a" * 256
    assert_not @request.valid?
  end

  test "phone validates should reject invalid phone number" do 
    invalid_phones = %w[+42060912451 308534563 23452532]
    invalid_phones.each do |invalid_number|
      @request.phone = invalid_number
      assert_not @request.valid?, "#{invalid_number.inspect} should be invalid"
    end 
  end
  test "email shouldn't be too long" do 
    @request.email = "a" * 256
    assert_not @request.valid? 
  end

  test "email validates should reject invalid addresses" do 
    invalid_addreseses = %w[user@example,com user_at_foo.org user.name@example.foo@bar_baz.com foobar]
    invalid_addreseses.each do |invalid_address| 
      @request.email = invalid_address
      assert_not @request.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be saved as lower-case" do 
    mixed_case_email = "FOo@ExAmple.COM"
    @request.email = mixed_case_email
    @request.save 
    assert_equal mixed_case_email.downcase, @request.reload.email
  end

  test "text shouldn't be too long" do 
    @request.text = "a" * 257
    assert_not @request.valid?
  end


end
