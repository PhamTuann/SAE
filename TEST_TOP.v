`timescale 1ns/1ns
module test_top;

	localparam ADDRESSWIDTH= 3;
	localparam DATAWIDTH= 24;
	
	reg PCLK;
	reg PRESETn;
	reg [ADDRESSWIDTH-1:0]PADDR;
	reg [DATAWIDTH-1:0] PWDATA;
	reg PWRITE;
	reg PSELx;
	reg PENABLE;
	wire [DATAWIDTH-1:0] PRDATA;
	wire PREADY;
		
	reg reset_tx;
	reg clk_tx;
	reg reset_rx;
	reg clk_rx;

	top dut(
		.PCLK(PCLK),
		.PRESETn(PRESETn),
		.PADDR(PADDR),
		.PWDATA(PWDATA),
		.PWRITE(PWRITE),
		.PSELx(PSELx),
		.PENABLE(PENABLE),
		.PRDATA(PRDATA),
		.PREADY(PREADY),
		
		.reset_tx(reset_tx),
		.clk_tx(clk_tx),
		.reset_rx(reset_rx),
		.clk_rx(clk_rx)
	);


	initial begin
		PCLK = 0;
		forever begin
			PCLK = #1 ~PCLK;
		end		
	end
	initial begin
		clk_tx = 0;
		forever begin
			clk_tx = #2 ~clk_tx;
		end		
	end
	initial begin
		clk_rx = 0;
		forever begin
			clk_rx = #2 ~clk_rx;
		end		
	end
	initial begin
		reset_tx = 1;
		reset_rx = 1;
		PCLK = 0;
		PRESETn = 0;
		PADDR = 0;
		PWDATA = 0;
		PWRITE = 0; 
		PSELx = 0;
		PENABLE = 0;
		#5
       		PRESETn = 1;
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h001;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h002;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h003;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h004;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	

		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h005;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//reset		
		reset_tx = 0;
		reset_rx = 0;
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h006;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h007;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	

		//transmit data 1
		#2
		PADDR = 4;
		PWDATA = 12'h008;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;	
		//transmit data 2 
		#2
		PADDR = 4;
		PWDATA = 12'h009;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 3
		#2
		PADDR = 4;
		PWDATA = 12'h00a;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 4
		#2
		PADDR = 4;
		PWDATA = 12'h00b;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 5
		#2
		PADDR = 4;
		PWDATA = 12'h00c;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 6
		#2
		PADDR = 4;
		PWDATA = 12'h00d;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 7
		#2
		PADDR = 4;
		PWDATA = 12'h00e;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h00f;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h010;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h011;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;

		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h012;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h013;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h014;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h015;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h016;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0; 
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h017;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h018;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h019;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01a;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01b;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01c;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01d;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01e;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h01f;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h020;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h021;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h022;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h023;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h024;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h025;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h026;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h027;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h028;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h029;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 4;
		PWDATA = 12'h02a;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 6;
		PWDATA = 24'h550001;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#2
		PADDR = 2;
		PWDATA = 8'b11100000;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#50
		PADDR = 2;
		PWDATA = 8'b11110000;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		//transmit data 8
		#10
		PADDR = 2;
		PWDATA = 8'b11100000;
		PWRITE = 1; 
		PSELx = 1;
		#2
		PENABLE = 1;
		#2
		PENABLE = 0;
		PSELx = 0;
		#900000;
		#1000000;
		$finish;
	end   
endmodule
