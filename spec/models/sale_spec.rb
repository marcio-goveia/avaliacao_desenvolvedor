require 'rails_helper'

describe Sale do
  it "is valid with valid atributes" do
    sale = build(:sale)
    expect(sale).to be_valid
  end
  it "is not valid without an buyer" do
    invalidates(:buyer, nil)
  end
  it "is not valid without a description" do
    invalidates(:description, nil)
  end
  it "is not valid without an unit_price" do
    invalidates(:unit_price, nil)
  end
  it "is not valid without a quantity"do
    invalidates(:quantity, nil)
  end
  it "is not valid without an address"do
    invalidates(:quantity, nil)
  end
  it "is not valid without a provider"do
    invalidates(:provider, nil)
  end

  it "is not valid zero unit_price" do
    invalidates(:unit_price, 0)
  end
  it "is not valid negative unit_price" do
    invalidates(:unit_price, FFaker::Random.rand(1..99) * -1)
  end

  it "is not valid zero quantity" do
    invalidates(:quantity, 0)
  end

  it "is not valid negative quantity"  do
    invalidates(:quantity, FFaker::Random.rand(1..99) * -1)
  end

  it "is not valid non integer quantity"  do
    invalidates(:quantity, FFaker::Random.rand(1..99)/10.0 )
  end
end

private
def invalidates(attribute, value)
  sale = build(:sale)
  sale[attribute] = value
  expect(sale).to_not be_valid
end
