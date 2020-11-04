require './own_rspec'
require './user'

OwnRSpec.describe User do
  describe '#first_name' do
    it 'returns nil when name is not given' do
      user = User.new(nil)

      expect(user.first_name).to eq nil
    end

    it 'returns nil when name is given' do
      user = User.new('John Doe')

      expect(user.first_name).to eq 'John'
    end
  end
end
