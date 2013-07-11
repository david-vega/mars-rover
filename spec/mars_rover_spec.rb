require 'spec_helper'

describe Rover do
  subject { Rover.new direction: :n, position: { x: 1, y: 2 }}
end
