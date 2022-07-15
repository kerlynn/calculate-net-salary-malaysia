require "calculate_net_income"

describe IncomeCalculator do
  describe ".calculate_net_income" do
    context "given amount too low" do
      it "returns salary too low" do
        cal = IncomeCalculator.new
        expect(cal.calculate_net_income(1000)).to eql("salary too low")
      end
    end
  end
end