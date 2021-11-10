RSpec.describe 'group_by_marks' do
  it 'x' do
    marks = { Ramesh: 23, Vivek: 40, Harsh: 88, Mohammad: 60 }
    pass_marks = 30
    expected_result = {
      Failed: [[:Ramesh, 23]],
      Passed: [[:Vivek, 40], [:Harsh, 88], [:Mohammad, 60]]
    }

    result = group_by_marks(marks, pass_marks)

    expect(result).to eq(expected_result)
  end
end
