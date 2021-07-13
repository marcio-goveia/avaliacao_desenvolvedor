require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      buyer: "MyString",
      description: "MyString",
      unit_price: "9.99",
      quantity: 1,
      address: "MyString",
      provider: "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input[name=?]", "sale[buyer]"

      assert_select "input[name=?]", "sale[description]"

      assert_select "input[name=?]", "sale[unit_price]"

      assert_select "input[name=?]", "sale[quantity]"

      assert_select "input[name=?]", "sale[address]"

      assert_select "input[name=?]", "sale[provider]"
    end
  end
end
