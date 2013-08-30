# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  raise TriangleError if a == 0 and b == 0 and c == 0
  raise TriangleError if [a,b,c].any? { |v| v < 0 }
  raise TriangleError if (a + b <= c) or (a + c <= b) or (b + c <= a)

  if ( a == b and a == c)
    :equilateral
  elsif ( a == b or a == c or b == c)
    :isosceles
  elsif ( (a != b) and (a != c) and (b != c) )
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
