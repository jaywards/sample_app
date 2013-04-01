require 'spec_helper'

describe "Static pages" do

let(:base_title) {"Ruby on Rails Tutorial"}
	
	describe "Home page"	do
		it "should have the h1 'Sample App'"  do
	  	 visit root_path
	  	 page.should have_selector('h1', text: 'Sample App')
  		end
	
  		it "should have the base title"	do
  			visit root_path
  			page.should have_selector('title', text: "#{base_title}")
  		end

  		it "Should not hav a custome page title" do
  			visit root_path
  			page.should_not have_selector('title', text: '| Home')
  		end

	end


describe "Help page"	do
		it "should have the h1 content 'Help'"  do
	  	 visit root_path
	  	 page.should have_selector('h1', text: 'Help')
  		end

		it "should have the right title"	do
  			visit root_path
  			page.should have_selector('title', text: "#{base_title} | Help")
  		end

	end


describe "About page"	do
		it "should have the h1 content 'About Us'"  do
	  	 visit root_path
	  	 page.should have_selector('h1', text: 'About Us')
  		end
	
  		it "should have the right title"	do
  		 visit root_path
  		 page.should have_selector('title', text: "#{base_title} | About Us")
  		end

	end

describe "Contact page"	do
		it "should have the h1 content 'Contact'"  do
	  	 visit root_path
	  	 page.should have_selector('h1', text: 'Contact')
  		end
	
  		it "should have the right title"	do
  		 visit root_path
  		 page.should have_selector('title', text: "#{base_title} | Contact")
  		end

	end


end
