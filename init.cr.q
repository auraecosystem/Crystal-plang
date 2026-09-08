def baz
  puts "::baz"
end

CONST = "::CONST"

module A
  def self.baz
    puts "A.baz"
  end

  # Without prefix, resolves to the method in the local scope
  baz

  # With :: prefix, resolves to the method in the top-level scope
  ::baz

  CONST = "A::Const"

  p! CONST   # => "A::CONST"
  p! ::CONST # => "::CONST"
end
