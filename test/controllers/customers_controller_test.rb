require "test_helper"

describe CustomersController do

  it "must get index" do 
    get customers_path
    must_respond_with :ok
  end

  expect(response.header['Content-Type]).must_include 'json' 
end