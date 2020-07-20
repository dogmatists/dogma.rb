# This is free and unencumbered software released into the public domain.

require_relative '../lib/dogma'

include Dogma

RSpec.describe Dogma::Angle do
  describe ".new(radians: ...)" do
    it "constructs the angle from radians" do
      expect(Angle.new(radians: 0).to_f).to eq(0)
      expect(Angle.new(radians: Math::PI).to_f).to eq(Math::PI)
      expect(Angle.new(radians: 2*Math::PI).to_f).to eq(2*Math::PI)
    end
  end

  describe ".new(degrees: ...)" do
    it "constructs the angle from degrees" do
      expect(Angle.new(degrees: 0).to_f).to eq(0)
      expect(Angle.new(degrees: 180).to_f).to eq(Math::PI)
      expect(Angle.new(degrees: 360).to_f).to eq(2*Math::PI)
    end
  end

  describe ".new(turns: ...)" do
    it "constructs the angle from turns" do
      expect(Angle.new(turns: 0).to_f).to eq(0)
      expect(Angle.new(turns: 0.5).to_f).to eq(Math::PI)
      expect(Angle.new(turns: 1).to_f).to eq(2*Math::PI)
    end
  end

  describe "#to_f" do
    it "returns the angle in radians" do
      expect(Angle.new(radians: 2).to_f).to eq(2)
    end
  end
end
