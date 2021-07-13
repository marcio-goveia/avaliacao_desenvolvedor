require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      buyer: "MyString",
      description: "MyString",
      unit_price: "9.99",
      quantity: 1,
      address: "MyString",
      provider: "MyString"
    ))
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do

      assert_select "input[name=?]", "sale[buyer]"

      assert_select "input[name=?]", "sale[description]"

      assert_select "input[name=?]", "sale[unit_price]"

      assert_select "input[name=?]", "sale[quantity]"

      assert_select "input[name=?]", "sale[address]"

      assert_select "input[name=?]", "sale[provider]"
    end
  end
end
