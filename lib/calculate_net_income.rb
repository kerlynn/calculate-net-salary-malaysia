
def get_epf 
  @monthly_income * 11.to_f/100
end

def get_eis 
  return 7.9 if @monthly_income >= 3900
  return ((@monthly_income - 1010)/100)* 0.2 + 2.1
end

def get_socso 
  return 19.75 if @monthly_income >= 3900
  return ((@monthly_income - 1010)/100)* 0.5 + 5.25
end

def calculate_net_income monthly_income

  return 'salary too low' if monthly_income <= 1000
  @monthly_income = monthly_income
  
  @monthly_income - get_epf - get_eis - get_socso

end

puts 'Insert Your Monthly Income:'
monthly_income = gets.chomp.to_f
monthly = calculate_net_income(monthly_income)
yearly = monthly * 12
puts "monthly: #{monthly}, yearly: #{yearly}"


