require('rspec')
require('coin_combination')

describe("Float#coin_combination") do
  it("returns number of quarters for dollar amount entered") do
    expect(0.77.make_change()).to(eq(3))
  end
end
