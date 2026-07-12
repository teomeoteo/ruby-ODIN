require_relative '../repeat_exercises/caesar_cipher_repeat'

RSpec.describe '#caesar_cipher' do
  it 'shifts a char to the right by 1' do
    expect(caesar_cipher('a', 1)).to eq('b')
  end
  it 'shifts 3 characters to the right by 2' do
    expect(caesar_cipher('cde', 2)).to eq('efg')
  end
  it 'does not change invalid characters' do
    expect(caesar_cipher('13e', 2)).to eq('13g')
  end
  it do
    #
  end
  it do
    #
  end
  it do
    #
  end
end