require File.expand_path '../../spec_helper.rb', __FILE__

RSpec.describe Task, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:state) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:name).is_at_most(25) }
  it { should validate_length_of(:description).is_at_most(1400) }
  it { should validate_length_of(:name).is_at_least(5) }
  it { should validate_length_of(:description).is_at_least(10) }
end
