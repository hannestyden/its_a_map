require 'minitest/spec'
require 'minitest/autorun'

$:.push File.expand_path('../../lib', __FILE__)
require 'its_a_map/dictionary'

describe 'ItsAMap' do
  subject { {}.class }

  it 'should map Hash to Dictionary' do
    subject.must_equal Dictionary
  end

  it 'should rename Hash to Dictionary' do
    subject.name.must_equal 'Dictionary'
  end
end
