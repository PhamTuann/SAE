module apb_slave 
	#(parameter ADDRESSWIDTH= 3,
	parameter DATAWIDTH= 24)

	(
	input PCLK,
	input PRESETn,
	input [ADDRESSWIDTH-1:0]PADDR,
	input [DATAWIDTH-1:0] PWDATA,
	input PWRITE,
	input PSELx,
	input PENABLE,
	output reg [DATAWIDTH-1:0] PRDATA,
	output reg PREADY = 1,

	//register
	input [7:0] reg_status,  
	output reg [7:0] reg_command, 
	output reg [11:0] reg_transmit, 
	input [11:0] reg_receive, 
	output reg [23:0] reg_id_data,
	input [23:0] reg_id_data_rv,
	input [7:0] reg_format_rv,
	//output control fifo tx
	output reg write_enable_tx,
	output reg read_enable_rx
	
	);

	always @(posedge PCLK or negedge PRESETn) begin
 		if(!PRESETn) begin
			PRDATA <= 0;
			reg_command <= 0;
			reg_transmit <= 0; 
			write_enable_tx <= 0;
			read_enable_rx <= 0;
			reg_id_data <= 0;
		end
		else begin
			if (PENABLE & PWRITE & PSELx) begin
				case (PADDR)
					2: reg_command <= PWDATA;
					4: begin
						if(!reg_status[7]) begin	
							reg_transmit <= PWDATA;
						end
						
					end
					6: reg_id_data <= PWDATA;
				endcase
			end

			if (PWRITE & PADDR == 4) begin
				write_enable_tx <= PENABLE;
			end

			if(PENABLE & !PWRITE & PSELx) begin
				case (PADDR)
					3: PRDATA <= reg_status;
					5: begin 
						if(!reg_status[4]) begin
							PRDATA <= reg_receive;
						end
					end
					7: PRDATA <= reg_id_data_rv;
					9: PRDATA <= reg_format_rv;
				endcase
			end

			if (!PWRITE & PADDR == 5) read_enable_rx <= PENABLE;
		end
	end
endmodule