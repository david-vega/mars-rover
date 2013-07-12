require 'spec_helper'

describe World do
  subject { World.new width: 50, height: 50}

  it 'it has a size' do
    expect(subject.width).to_not be nil
    expect(subject.height).to_not be nil
  end
end
