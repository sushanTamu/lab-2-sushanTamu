module cache_mem_test(cache_mem_intf.tb cmbus);

  initial
  begin : mem_t

//TO DO : Create your own stimulus (Hint call mem_write and mem_read task of cmbus instance)
		
// The first bug in the design lies at line number 50 in the cache_mem design file
// This scenario happens whenever there is Cache-Hit.
// The issue here is whenever the address of the cache and requested operation matches the design
// is writing the data_in to the addr field instead of the data field of the cache.
// Also the data field is 8bit wide and the addr field is 5bit wide, so this gives wrong information 
// and even stores the wrong addr value.

//The following example below demonstrate the same bevaiour as explained above.
 
	#10cmbus.tb.mem_write('d2,'d15); // First write operation
		
	#10cmbus.tb.mem_write('d2,'d10); // Second write operation
        
	#10cmbus.tb.mem_read('d2); // Reading the final value in the memory after 2 write operations
    		
	#10$display ("Expected Value after reading the data_out is 10 ");

	$display ("Current Value after reading the data_out is %h", cmbus.mem.data_out);

	#200$finish;
  end

endmodule
