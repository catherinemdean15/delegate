require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'relationships' do
    it { should have_many(:users).through(:user_projects) }
    it { should have_many(:user_projects) }
  end
end
