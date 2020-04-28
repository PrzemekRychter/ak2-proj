/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

(* top =  1  *)
(* src = "adder.v:8" *)
module adder(X, Y, S, cout);
  (* src = "adder.v:18" *)
  wire G10;
  (* src = "adder.v:18" *)
  wire G20;
  (* src = "adder.v:18" *)
  wire G30;
  (* src = "adder.v:18" *)
  wire G32;
  (* src = "adder.v:18" *)
  wire G40;
  (* src = "adder.v:18" *)
  wire G50;
  (* src = "adder.v:18" *)
  wire G54;
  (* src = "adder.v:15" *)
  wire [5:0] Gii;
  (* src = "adder.v:17" *)
  wire [5:0] Hii;
  (* src = "adder.v:18" *)
  wire P32;
  (* src = "adder.v:18" *)
  wire P54;
  (* src = "adder.v:16" *)
  (* unused_bits = "0" *)
  wire [5:0] Pii;
  (* src = "adder.v:12" *)
  output [5:0] S;
  (* src = "adder.v:10" *)
  input [5:0] X;
  (* src = "adder.v:11" *)
  input [5:0] Y;
  (* src = "adder.v:13" *)
  output cout;
  assign S[1] = Hii[1] ^ (* src = "adder.v:43" *) Gii[0];
  assign S[2] = Hii[2] ^ (* src = "adder.v:44" *) G10;
  assign S[3] = Hii[3] ^ (* src = "adder.v:45" *) G20;
  assign S[4] = Hii[4] ^ (* src = "adder.v:46" *) G30;
  assign S[5] = Hii[5] ^ (* src = "adder.v:47" *) G40;
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:30" *)
  sfco G10x (
    .Ga(Gii[1]),
    .Gab(G10),
    .Gb(Gii[0]),
    .Pa(Pii[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:38" *)
  sfco G20x (
    .Ga(Gii[2]),
    .Gab(G20),
    .Gb(G10),
    .Pa(Pii[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:34" *)
  sfco G30x (
    .Ga(G32),
    .Gab(G30),
    .Gb(G10),
    .Pa(P32)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:39" *)
  sfco G40x (
    .Ga(Gii[4]),
    .Gab(G40),
    .Gb(G30),
    .Pa(Pii[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:36" *)
  sfco G50x (
    .Ga(G54),
    .Gab(G50),
    .Gb(G30),
    .Pa(P54)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:31" *)
  fco GP32 (
    .Ga(Gii[3]),
    .Gab(G32),
    .Gb(Gii[2]),
    .Pa(Pii[3]),
    .Pab(P32),
    .Pb(Pii[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:32" *)
  fco GP54 (
    .Ga(Gii[5]),
    .Gab(G54),
    .Gb(Gii[4]),
    .Pa(Pii[5]),
    .Pab(P54),
    .Pb(Pii[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:21" *)
  gph GPH0 (
    .G(Gii[0]),
    .H(Hii[0]),
    .P(Pii[0]),
    .x(X[0]),
    .y(Y[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:22" *)
  gph GPH1 (
    .G(Gii[1]),
    .H(Hii[1]),
    .P(Pii[1]),
    .x(X[1]),
    .y(Y[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:23" *)
  gph GPH2 (
    .G(Gii[2]),
    .H(Hii[2]),
    .P(Pii[2]),
    .x(X[2]),
    .y(Y[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:24" *)
  gph GPH3 (
    .G(Gii[3]),
    .H(Hii[3]),
    .P(Pii[3]),
    .x(X[3]),
    .y(Y[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:25" *)
  gph GPH4 (
    .G(Gii[4]),
    .H(Hii[4]),
    .P(Pii[4]),
    .x(X[4]),
    .y(Y[4])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "adder.v:26" *)
  gph GPH5 (
    .G(Gii[5]),
    .H(Hii[5]),
    .P(Pii[5]),
    .x(X[5]),
    .y(Y[5])
  );
  assign S[0] = Hii[0];
  assign cout = G50;
endmodule

(* src = "fco.v:4" *)
module fco(Ga, Pa, Gb, Pb, Gab, Pab);
  (* src = "fco.v:9" *)
  wire _0_;
  (* src = "fco.v:6" *)
  input Ga;
  (* src = "fco.v:7" *)
  output Gab;
  (* src = "fco.v:6" *)
  input Gb;
  (* src = "fco.v:6" *)
  input Pa;
  (* src = "fco.v:7" *)
  output Pab;
  (* src = "fco.v:6" *)
  input Pb;
  assign Pab = Pa & (* src = "fco.v:10" *) Pb;
  assign _0_ = Pa & (* src = "fco.v:9" *) Gb;
  assign Gab = Ga | (* src = "fco.v:9" *) _0_;
endmodule

(* src = "gph.v:5" *)
module gph(x, y, G, P, H);
  (* src = "gph.v:8" *)
  output G;
  (* src = "gph.v:8" *)
  output H;
  (* src = "gph.v:8" *)
  output P;
  (* src = "gph.v:7" *)
  input x;
  (* src = "gph.v:7" *)
  input y;
  assign G = x & (* src = "gph.v:10" *) y;
  assign P = x | (* src = "gph.v:11" *) y;
  assign H = x ^ (* src = "gph.v:12" *) y;
endmodule

(* src = "sfco.v:7" *)
module sfco(Ga, Pa, Gb, Gab);
  (* src = "sfco.v:12" *)
  wire _0_;
  (* src = "sfco.v:9" *)
  input Ga;
  (* src = "sfco.v:10" *)
  output Gab;
  (* src = "sfco.v:9" *)
  input Gb;
  (* src = "sfco.v:9" *)
  input Pa;
  assign _0_ = Pa & (* src = "sfco.v:12" *) Gb;
  assign Gab = Ga | (* src = "sfco.v:12" *) _0_;
endmodule
