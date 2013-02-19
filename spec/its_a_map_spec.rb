require 'minitest/spec'
require 'minitest/autorun'

$:.push File.expand_path('../../lib', __FILE__)
require 'its_a_map'

describe 'ItsAMap' do
  subject { {}.class }

  it 'should map Hash to Map' do
    subject.must_equal Map
  end

  it 'should rename Hash to Map' do
    subject.name.must_equal 'Map'
  end
end
