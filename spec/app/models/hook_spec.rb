require 'spec_helper'

describe "Hook Model" do
  let(:hook) { Hook.new }
  it 'can be created' do
    hook.should_not be_nil
  end
end
