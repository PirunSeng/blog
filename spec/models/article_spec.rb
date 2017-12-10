RSpec.describe Article, 'validation' do
  it { should validate_presence_of(:title) }
  it { should validate_length_of(:title).is_at_least(5) }
end
