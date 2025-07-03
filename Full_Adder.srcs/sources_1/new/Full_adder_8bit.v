`timescale 10ns/10ns

module Full_adder_8bit;

  // giriþler ve çýkýþlarý tanýmlama
    reg [7:0] A, B;
    reg clk;

    reg [7:0] S;
    reg [7:0] Cout;

    reg Cin_current, Cin_next;

     integer i; 

  // clock yapma
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // test deðerleri (1 kez çalýþýcak)
  initial begin
    A = 8'b0000_0101;  // A sayýsý
    B = 8'b1111_0011;  // B sayýsý
    Cin_current = 0;
    Cin_next = 0;
    S = 0;
    Cout = 0;
    i = 0;
  end

  // her clockta 1 bit ilerlemesi için gereken kod
  always @(posedge clk) begin //clock her deðiþtiðinde içine giricek
    if (i < 8) begin // i 8 den kucukse (son bit)
      // 1-bit toplama
      S[i]    = A[i] ^ B[i] ^ Cin_current; // s çýktý
      Cout[i] = (A[i] & B[i]) | (A[i] & Cin_current) | (B[i] & Cin_current); //elde varsa

      // eski eldeyi yazar
      Cin_next = Cout[i];
      i = i + 1;
    end else begin
      // Bittiðinde sonucu göster
      $display("A     = %b", A);
      $display("B     = %b", B);
      $display("Sum   = %b", S);
      $display("Cout  = %b", Cout);
      $finish;
   
 
    end
  end

  // eski eldeyi sonraki loopa sokar
  always @(negedge clk) begin
    Cin_current = Cin_next;
  end

endmodule
