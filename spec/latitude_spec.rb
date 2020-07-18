# This is free and unencumbered software released into the public domain.

require_relative '../lib/dogma'

include Dogma

RSpec.describe Dogma::Latitude do
  describe "#to_f" do
    it "returns the angle in radians" do
      expect(Latitude.new(42).to_f).to eq(42)
    end
  end
end
