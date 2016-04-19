#coding utf-8
require "rails_helper"

RSpec.describe 'Login page', :feature do
  
  context "Initial state" do

    before do
      visit '/'
    end

    describe 'GET /' do
      it 'renders properly' do
        expect(page.status_code).to eq 200
      end

      it 'allows visitor to sign up' do
        expect(page).to have_selector "form#new_user"
      end

      it 'allows visitor to sign in' do
        expect(page).to have_selector "a", text: "Sign up"
      end

      it 'redirects visitor to signup page' do
        click_link('Sign up')
        expect(page.status_code).to eq 200
        expect(page).to have_selector "h2", text: "Sign up"
        expect(page).to have_selector "form#new_user"
      end
    end
  end
end