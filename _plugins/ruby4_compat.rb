# Compatibility shim for Ruby 3.2+ where tainted?/untaint were removed.
# The github-pages gem pins Liquid 4.0.3 which calls these methods.
# GitHub Pages builds with a compatible Ruby; this is only needed for local dev.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
