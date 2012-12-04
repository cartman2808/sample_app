require 'spec_helper'

describe "static pages" do
	describe "Home page" do
		it "should have the h1 'home'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => "Home")
		end

		it "should have title 'home'" do
			visit '/static_pages/home'
			page.should have_selector('title', 
														:text=>"Ruby on Rails Tutorial Sample App | Home")
		end
	end
	describe "Help page" do
		it "should have the content 'help'" do
			visit "/static_pages/help"
			page.should have_selector('h1',:text => "Help")
		end
		it "should have the title 'help'" do
			visit "/static_pages/help"
			page.should have_selector('title',
														:text=>'Ruby on Rails Tutorial Sample App | Help')
		end
	end

	describe "About page" do
		it "should have the content 'About us'" do
			visit "/static_pages/about"
			page.should have_selector('h1',:text => "About us")
		end
		it "should have the title 'About us'" do
			visit "/static_pages/about"
			page.should have_selector('title',
												:text=>'Ruby on Rails Tutorial Sample App | About us')
		end
	end
end
