require 'rails_helper'

RSpec.describe UserProject, type: :model do
  describe 'relationships' do
    it { should belong_to :project }
    it { should belong_to :user }
  end
end
