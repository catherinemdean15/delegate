require 'rails_helper'

RSpec.describe Assignee, type: :model do
  describe 'relationships' do
    it { should have_many :tasks }
    it { should belong_to :project }
  end
end
