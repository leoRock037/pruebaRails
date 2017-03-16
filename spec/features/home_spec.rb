require "rails_helper"

feature "Home Message", :type => :feature do
  context "User visits home page" do
    it "should render hola mundo message" do
      visit root_path
      expect(page).to have_content('hola mundo')
    end
  end
end

