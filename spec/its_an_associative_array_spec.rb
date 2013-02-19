require 'minitest/spec'
require 'minitest/autorun'

$:.push File.expand_path('../../lib', __FILE__)
require 'its_a_map/associative_array'

describe 'ItsAMap' do
  subject { {}.class }

  it 'should map Hash to AssociativeArray' do
    subject.must_equal AssociativeArray
  end

  it 'should rename Hash to AssociativeArray' do
    subject.name.must_equal 'AssociativeArray'
  end
end
