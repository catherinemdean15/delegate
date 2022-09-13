require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:projects).through(:user_projects) }
    it { should have_many(:user_projects) }
  end
end
