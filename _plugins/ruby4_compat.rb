# Liquid 4.x calls String#tainted? which was removed in Ruby 3.2.
# This shim restores a no-op version so Jekyll can render on Ruby 4.x.
return if "".respond_to?(:tainted?)

[String, Object].each do |klass|
  klass.define_method(:tainted?) { false }
end
