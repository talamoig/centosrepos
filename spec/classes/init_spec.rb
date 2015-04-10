require 'spec_helper'
describe 'centosrepos' do

  context 'with defaults for all parameters' do
    it { should contain_class('centosrepos') }
  end
end
