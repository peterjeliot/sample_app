require 'spec_helper'

# describe "StaticPages" do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#       get static_pages_index_path
#       response.status.should be(200)
#     end
#   end
# end

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }
    
    it "should have the base title" do
      expect(page).to have_title "#{base_title}"
    end

    it "should not have a custom page title" do
      expect(page).not_to have_title '| Home'
    end

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end
  end

  describe "help page" do
    before { visit help_path }

    it "should have the title 'Help'" do
      expect(page).to have_title("#{base_title} | Help")
    end

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have the title 'About Us'" do
      expect(page).to have_title("#{base_title} | About Us")
    end

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact page" do
    before { visit contact_path }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
