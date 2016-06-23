require 'spec_helper'

describe "sales/edit" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :title => "MyString",
      :description => "MyText",
      :address_line1 => "MyString",
      :address_line2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => 1
    ))
  end

  it "renders the edit sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do
      assert_select "input#sale_title[name=?]", "sale[title]"
      assert_select "textarea#sale_description[name=?]", "sale[description]"
      assert_select "input#sale_address_line1[name=?]", "sale[address_line1]"
      assert_select "input#sale_address_line2[name=?]", "sale[address_line2]"
      assert_select "input#sale_city[name=?]", "sale[city]"
      assert_select "input#sale_state[name=?]", "sale[state]"
      assert_select "input#sale_zip_code[name=?]", "sale[zip_code]"
    end
  end
end
