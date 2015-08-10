class Triangle

  define_method(:initialize) do |side_one, side_two, side_three|
    @side_one   = side_one
    @side_two   = side_two
    @side_three = side_three
  end

  define_method(:triangle?) do
    if @side_one + @side_two > @side_three &&
       @side_two + @side_three > @side_one &&
       @side_three + @side_one > @side_two
       true
     else
       false
    end
  end
end
