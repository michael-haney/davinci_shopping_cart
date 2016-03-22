require "rails_helper"
feature "Products management" do
  scenario "User creates a new product" do
    visit "/products/new"
    fill_in "Name", :with => "Apple"
    fill_in "Description", :with => "Shiny Red Delicious"
    save_and_open_page
    fill_in "Image URL", :with => "/images/red_delicious.png"
    fill_in "Price", :with => "5.25"
    click_button "Create"
    expect(page).to have_content("Product was successfully created.")
  end
end
