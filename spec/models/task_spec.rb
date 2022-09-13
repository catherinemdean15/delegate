require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'relationships' do
    it { should belong_to :project }
    it { should belong_to :assignee }
  end
end
