class Float
  define_method(:make_change) do
    #we created a method where the user enters a float and we convert it to a whole number.
    change = self*100
    #we are checking to see if the dollar amount has at least one quarter in it.
    if change / 25 > 1
      #in this method the 'to_i' removes a decimal// drops off the remainder from the result.
      num_of_quarters = (change / 25).to_i()
      left_over = change%25
      return num_of_quarters
    end
  end
end
