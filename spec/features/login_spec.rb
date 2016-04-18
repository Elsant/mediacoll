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
        expect(page).to have_selector "a", text: "Регистрация"
      end
    end
  end
end