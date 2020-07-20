# This is free and unencumbered software released into the public domain.

require_relative 'angle'

##
# A latitude.
#
# @see https://dogma.dev/Latitude/
class Dogma::Latitude < Dogma::Angle
  ##
  # @param  [Float, #to_f] degrees
  # @return [void]
  def initialize(degrees)
    degrees = degrees.to_f
    raise ArgumentError, "Latitude bounds are ±90°, but got #{degrees}°" if degrees.abs > 90
    super(degrees: degrees)
  end
end # Dogma::Latitude
