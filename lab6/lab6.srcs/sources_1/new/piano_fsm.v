module piano_fsm #(
    parameter I2S_BIT_DEPTH = 16
    )(
    input clk,  // 125 MHz clock as usual
    input rst,
    
    input faster_note,
    input slower_note,
    input note_length_reset,

    output [7:0] ua_transmit_din,
    output ua_transmit_wr_en,
    input ua_transmit_full,

    input [7:0] ua_receive_dout,
    input ua_receive_empty,
    output ua_receive_rd_en,

    output [I2S_BIT_DEPTH-1:0] i2s_din,
    output [1:0] i2s_valid,
    input [1:0] i2s_ready,

    output audio_pwm
);
    assign audio_pwm = 1'b0;
    assign ua_transmit_din = 0;
    assign ua_transmit_wr_en = 0;
    assign ua_receive_rd_en = 0;
    assign i2s_din = 0;
    assign i2s_valid = 0;
endmodule
