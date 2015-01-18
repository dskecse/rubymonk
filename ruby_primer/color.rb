class Color
  attr_reader :r, :g, :b

  # Public: Initialize an RGB Color.
  #
  # r - An Integer representing R level of an RGB color.
  # g - An Integer representing G level of an RGB color.
  # b - An Integer representing B level of an RGB color.
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    (299 * r + 587 * g + 114 * b) / 1000
  end

  def brightness_difference(other)
    (brightness_index - other.brightness_index).abs
  end

  def hue_difference(other)
    (r - other.r).abs + (g - other.g).abs + (b - other.b).abs
  end

  # Public: Find out if the given color combos have sufficient contrast.
  #
  # other - An RGB Color instance to compared with.
  #
  # Examples
  #
  #   Color.new(42, 42, 42).enough_contrast?(Color.new(210, 210, 210))
  #   # => true
  #
  # Returns true if there is enough contrast between two Colors, false otherwise.
  def enough_contrast?(other)
    brightness_difference(other) > 125 && hue_difference(other) > 500
  end
end
