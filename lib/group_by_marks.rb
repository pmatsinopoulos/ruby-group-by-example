def group_by_marks(marks, pass)
  marks.group_by do |_, mark|
    mark < pass ? :Failed : :Passed
  end
end
