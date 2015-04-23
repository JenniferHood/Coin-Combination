class Float
  define_method(:make_change) do
    #we created a method where the user enters a float and we convert it to a whole number.
    change = self*100
    until change == 0 do
    #we are checking to see if the dollar amount has at least one quarter in it.
    if change >= 25
      #in this method the 'to_i' removes a decimal// drops off the remainder from the result. the 'to_s' converts it to string so we can return a string.
      num_of_quarters = ((change / 25).to_i().to_s())
      change = change%25
      total_change = num_of_quarters + " Quarter"
#in this method, it's checking to see if the number of quaters is greater than 1; if so, then it will add the 's' to the end of the string to make it plural.
      if num_of_quarters > "1"
        total_change += "s "
      else
        total_change += " "
      end
    end


    if change >= 10
      num_of_dimes = ((change / 10).to_i().to_s())
      change = change%10
      total_change = total_change + num_of_dimes + " Dime"
     if num_of_dimes > "1"
       total_change = total_change + "s "
     end
   end

   if change >= 5
      num_of_nickles = ((change / 5).to_i().to_s())
      change = change%5
      total_change = total_change + " " + num_of_nickles + " Nickel"
    if num_of_nickles > "1"
      total_change = total_change + "s "
    end
  end

    if change >= 1
      num_of_pennies = ((change / 1).to_i().to_s())
      change = change%1
      total_change = total_change + num_of_pennies
     if num_of_pennies > "1"
        total_change = total_change + " Pennies"
      elsif num_of_pennies == "1"
        total_change = total_change + " Penny"
      end
    end
  end
#Specs were failing b/c extra white space so we added the method below to remove excess.
  total_change = total_change.strip()
  end
end
