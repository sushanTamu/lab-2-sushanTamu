# Description of the bug(s) found in the design

#Bug in the Design:

-> The highlighted portion in the design is the bug. Here we are assigning the data_in value to the addr and due to which cache is always missing the cache_hit operation because the address is getting changed at the cache level.

-> The bug in the design lies at line number 50 in the cache_mem design file

-> This scenario happens whenever there is Cache-Hit.

-> The issue here is whenever the address of the cache and requested operation matches the design is writing the data_in to the addr field instead of the data field of the cache.

-> Also the data field is 8bit wide and the addr field is 5bit wide, so this gives wrong information and even stores the wrong  addr  value in the cache.


# Description of the strategy used to find the bug

#Sequence of Operations done in order to catch the bug : 

-> After reset 

-> Write operation : addr=2 and data_in=0F 

-> Write operation :  addr=2 and data_in=0A 

-> Read operation :  addr=2
