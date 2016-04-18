require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'is valid' do
    specify { is_expected.to validate_presence_of :email } 
    specify { is_expected.to validate_uniqueness_of(:email).case_insensitive } 
    specify { is_expected.to validate_presence_of :password }
  end
end
