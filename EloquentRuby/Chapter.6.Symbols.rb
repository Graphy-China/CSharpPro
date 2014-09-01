#
#  String: for regular data processing.
#  Symbol: 
#        1.for "standing for" internal, symbolic, marker-type jobs.
#          similar with enum in C
#        2. only one instance of any given symbol in the code.
#

# only one instance of any given symbol.
#a and b refer to the same object
a = :all
b = :all

a == b
a === b
a.eql?(b)
a.equal?(b)
a.equal?(:all)

# every time you say "all", a brand new string is maked.
# x , y refer to different string object.
x = "all"
y = "all"

x == y      # true  -- value compare
x === y     # true  -- value compare 
x.eql?(y)   # true  -- value compare
x.equal?(y) # false -- object compare


# string as hash key
user = "Syu"
pw = "1234 56"
authentic = {user => pw }  # hash copy the string and use it as key
authentic[user]
user[0]="J"   # this will not affect the key already in hash.
authentic["Syu"] # OK
authentic[user]  # nil

# conversion between symbol and string
a = "all"
b = a.to_sym # :all
c = b.to_s   # "all"


# do not cross use symbol and string as key.

au = {:name => "syu"}

au[:name] # "syu"
au['name'] # nil 
