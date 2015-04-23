require('rspec')
require('coin_combination')

describe("Float#coin_combination") do
  it("returns number of quarters for dollar amount entered") do
    expect(0.75.make_change()).to(eq("3 Quarters"))
  end

  it("returns number of dimes and quaters for dollar amount entered") do
    expect(0.85.make_change()).to(eq("3 Quarters 1 Dime"))
  end

  it("returns number of nickels, dimes, and quarters for dollar amount entered") do
    expect(0.90.make_change()).to(eq("3 Quarters 1 Dime 1 Nickel"))
  end

  it("returns number of pennies, dimes, and quarters for dollar amount entered") do
    expect(0.98.make_change()).to(eq("3 Quarters 2 Dimes 3 Pennies"))
  end
end
