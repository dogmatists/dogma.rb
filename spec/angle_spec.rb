# This is free and unencumbered software released into the public domain.

require_relative '../lib/dogma'

include Dogma

RSpec.describe Dogma::Angle do
  describe "#to_f" do
    it "returns the angle in radians" do
      expect(Angle.new(2).to_f).to eq(2)
    end
  end
end
