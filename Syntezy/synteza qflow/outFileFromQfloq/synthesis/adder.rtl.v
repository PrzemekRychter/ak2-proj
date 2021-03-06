/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module adder(
    inout vdd,
    inout gnd,
    output [5:0] S,
    input [5:0] X,
    input [5:0] Y,
    output cout
);

wire [5:0] S ;
wire [5:0] X ;
wire [5:0] Y ;
wire _19_ ;
wire _16_ ;
wire \GP54.Pa  ;
wire _13_ ;
wire _7_ ;
wire _10_ ;
wire cout ;
wire _4_ ;
wire \G20x.Ga  ;
wire _1_ ;
wire G40 ;
wire \GP32.Ga  ;
wire \G50x.Ga  ;
wire G10 ;
wire _27_ ;
wire \G30x.Ga  ;
wire _24_ ;
wire \G10x.Gb  ;
wire _21_ ;
wire \G20x.Pa  ;
wire _18_ ;
wire _15_ ;
wire _9_ ;
wire _12_ ;
wire _6_ ;
wire \GP32.Pa  ;
wire \G50x.Pa  ;
wire _3_ ;
wire [5:1] _0_ ;
wire \G30x.Pa  ;
wire G30 ;
wire _26_ ;
wire _23_ ;
wire \G10x.Ga  ;
wire _20_ ;
wire _17_ ;
wire \GPH5.H  ;
wire _14_ ;
wire _8_ ;
wire \GPH4.H  ;
wire _11_ ;
wire \G40x.Ga  ;
wire _5_ ;
wire \GPH3.H  ;
wire _2_ ;
wire \GPH2.H  ;
wire \GP54.Ga  ;
wire \GPH1.H  ;
wire \G10x.Pa  ;
wire \GPH0.H  ;
wire G20 ;
wire _25_ ;
wire \G40x.Pa  ;
wire _22_ ;

NAND2X1 _60_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G40x.Ga ),
    .B(\GP54.Pa ),
    .Y(_15_)
);

NAND2X1 _57_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .B(_13_),
    .Y(\G30x.Ga )
);

FILL FILL5880x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _54_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_10_),
    .B(_11_),
    .Y(_1_)
);

NAND2X1 _89_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_26_),
    .B(_27_),
    .Y(\GP54.Pa )
);

NAND2X1 _51_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_9_),
    .Y(G40)
);

NAND2X1 _48_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_6_),
    .B(_7_),
    .Y(G30)
);

INVX1 _86_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[4]),
    .Y(_24_)
);

FILL SFILL4760x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL5000x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _45_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_5_),
    .Y(G20)
);

NOR2X1 _83_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_24_),
    .B(_25_),
    .Y(\G40x.Ga )
);

NAND2X1 _42_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .B(_3_),
    .Y(G10)
);

XOR2X1 _80_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[3]),
    .B(X[3]),
    .Y(\GPH3.H )
);

FILL SFILL1960x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _39_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .Y(cout)
);

INVX1 _77_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[3]),
    .Y(_23_)
);

BUFX2 _36_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_[3]),
    .Y(S[3])
);

NAND2X1 _74_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_21_),
    .Y(\G20x.Pa )
);

BUFX2 _33_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\GPH0.H ),
    .Y(S[0])
);

INVX1 _71_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[1]),
    .Y(_18_)
);

NOR2X1 _68_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_18_),
    .B(_19_),
    .Y(\G10x.Ga )
);

XOR2X1 _30_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G20),
    .B(\GPH3.H ),
    .Y(_0_[3])
);

XOR2X1 _65_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[0]),
    .B(X[0]),
    .Y(\GPH0.H )
);

FILL SFILL4680x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _62_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\GP54.Pa ),
    .B(\G40x.Pa ),
    .Y(\G50x.Pa )
);

INVX1 _59_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\GP54.Ga ),
    .Y(_14_)
);

FILL FILL5800x50 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _56_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G20x.Ga ),
    .B(\GP32.Pa ),
    .Y(_13_)
);

FILL SFILL1880x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _53_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G30),
    .B(\G50x.Pa ),
    .Y(_11_)
);

INVX1 _91_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[5]),
    .Y(_26_)
);

NOR2X1 _88_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_26_),
    .B(_27_),
    .Y(\GP54.Ga )
);

FILL SFILL1560x50 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _50_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G30),
    .B(\G40x.Pa ),
    .Y(_9_)
);

NAND2X1 _47_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G10),
    .B(\G30x.Pa ),
    .Y(_7_)
);

XOR2X1 _85_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[4]),
    .B(X[4]),
    .Y(\GPH4.H )
);

NAND2X1 _44_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G10),
    .B(\G20x.Pa ),
    .Y(_5_)
);

INVX1 _82_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[4]),
    .Y(_25_)
);

FILL SFILL1640x50 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _79_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_22_),
    .B(_23_),
    .Y(\GP32.Pa )
);

NAND2X1 _41_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G10x.Gb ),
    .B(\G10x.Pa ),
    .Y(_3_)
);

BUFX2 _38_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_[5]),
    .Y(S[5])
);

INVX1 _76_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[2]),
    .Y(_20_)
);

FILL SFILL4760x50 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1800x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _35_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_[2]),
    .Y(S[2])
);

NOR2X1 _73_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_21_),
    .Y(\G20x.Ga )
);

FILL SFILL1800x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

XOR2X1 _32_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G40),
    .B(\GPH5.H ),
    .Y(_0_[5])
);

XOR2X1 _70_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[1]),
    .B(X[1]),
    .Y(\GPH1.H )
);

FILL SFILL4840x50 (
    .gnd(gnd),
    .vdd(vdd)
);

XOR2X1 _29_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G10),
    .B(\GPH2.H ),
    .Y(_0_[2])
);

INVX1 _67_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[1]),
    .Y(_19_)
);

NOR2X1 _64_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_16_),
    .B(_17_),
    .Y(\G10x.Gb )
);

NAND2X1 _61_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_14_),
    .B(_15_),
    .Y(\G50x.Ga )
);

FILL SFILL1480x50 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _58_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\GP32.Pa ),
    .B(\G20x.Pa ),
    .Y(\G30x.Pa )
);

FILL SFILL4920x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _55_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\GP32.Ga ),
    .Y(_12_)
);

INVX1 _52_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G50x.Ga ),
    .Y(_10_)
);

XOR2X1 _90_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[5]),
    .B(X[5]),
    .Y(\GPH5.H )
);

FILL FILL5880x50 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _49_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G40x.Ga ),
    .Y(_8_)
);

INVX1 _87_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[5]),
    .Y(_27_)
);

FILL SFILL4680x50 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL1720x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _46_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G30x.Ga ),
    .Y(_6_)
);

NAND2X1 _84_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_24_),
    .B(_25_),
    .Y(\G40x.Pa )
);

INVX1 _43_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G20x.Ga ),
    .Y(_4_)
);

INVX1 _81_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[3]),
    .Y(_22_)
);

NOR2X1 _78_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_22_),
    .B(_23_),
    .Y(\GP32.Ga )
);

INVX1 _40_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G10x.Ga ),
    .Y(_2_)
);

BUFX2 _37_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_[4]),
    .Y(S[4])
);

XOR2X1 _75_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[2]),
    .B(X[2]),
    .Y(\GPH2.H )
);

BUFX2 _34_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_[1]),
    .Y(S[1])
);

INVX1 _72_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[2]),
    .Y(_21_)
);

NAND2X1 _69_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_18_),
    .B(_19_),
    .Y(\G10x.Pa )
);

FILL SFILL4840x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

XOR2X1 _31_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(G30),
    .B(\GPH4.H ),
    .Y(_0_[4])
);

XOR2X1 _28_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\G10x.Gb ),
    .B(\GPH1.H ),
    .Y(_0_[1])
);

INVX1 _66_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(Y[0]),
    .Y(_16_)
);

FILL SFILL5080x2050 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _63_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(X[0]),
    .Y(_17_)
);

FILL SFILL1640x1050 (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
