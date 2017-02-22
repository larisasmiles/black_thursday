require './test/test_helper'
require './lib/merchant_repository'
require './lib/sales_engine'

# require './lib/merchant_repository'
# require './lib/sales_engine'

class MerchantRepositoryTest < Minitest::Test

  def test_merchant_repository_exists
    skip
    se = SalesEngine.new("./data/merchants.csv")
    # se.merchant_repo is an instance of MerchantRepo class!
    mr = se.merchant_repo
    assert_instance_of CSV, mr.merchant_data
  end

  def test_can_make_new_merchant
    se = SalesEngine.new("./data/merchants.csv")
    mr = se.merchant_repo
    merchant_data = { id:"12334112", name:"Candisart", created_at:"2009-05-30", updated_at:"2010-08-29" }
    binding.pry
    merchant_object = mr.create_merchants(merchant_data)
    assert_instance_of Merchant, merchant_object
  end

  # def test_returns_all_merchants
  #   se = SalesEngine.new("./data/merchants.csv")
  #   mr = se.merchants
  #   merchant = mr.find_by_name("CJsDecor")
  #
  #   assert_instance_of Merchant, merchant
  # end



end

# first row:
#<CSV::Row id:"12334105" name:"Shopin1901" created_at:"2010-12-10" updated_at:"2011-12-04">
# id,name,created_at,updated_at
# 12334105,Shopin1901,2010-12-10,2011-12-04
# 12334112,Candisart,2009-05-30,2010-08-29
# 12334113,MiniatureBikez,2010-03-30,2013-01-21
