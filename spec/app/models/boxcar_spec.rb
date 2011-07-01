require 'spec_helper'

describe "Boxcar Model" do
  let(:boxcar) { Boxcar.new }
  it 'can be created' do
    boxcar.should_not be_nil
  end
end
