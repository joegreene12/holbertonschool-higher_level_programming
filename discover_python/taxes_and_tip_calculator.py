""" This is a Python promgram to ease your mind from crunching numbers
and keep your wallet from being empty as a tool to figure your cost
written by Joe Greene """


# simple print statement with quotes
print "Welcome to the taxes and tip calculator!"


# prompt question asked that requires input

#question about price of item of purchase that gets assigned to variable price
price = input("What is the price before tax?")

#question about amount of taxes added on to the price item assigned to tax
tax = input("What are the taxes? (in %)")

#question about tip you want to give in percentage assigned to tip variable
tip = input("What do you want to tip? (in %)")

#math equation using assigned variables to solve total price
x = price
tax = float(tax)/100
tip = float(tip)/100

# price = (x + price * tax)
# new_total = (price + (price * tip) * tip)
# new_total = price + tip

#new equation to fix script
newp = price + price * tax
total = newp + newp * tip


print ("The price that you need to pay is: $%.6f" %total)
