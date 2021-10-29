require "test_helper"

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  
  test "btc conversion" do 
    get root_url
    @btc =  Cryptocompare::Price.find('BTC', 'USD')["BTC"]["USD"]
    assert_response :success 
  end

  test "Welcome Index" do  
    get root_url
    assert_response :success
  end


  test "Conversion Not Eqaul" do 
    btc = 1245.90
    @btc =  Cryptocompare::Price.find('BTC', 'USD')["BTC"]["USD"]
    assert_not_equal btc, @btc 
  end

end
