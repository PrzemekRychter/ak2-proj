/* Verilog module written by vlog2Verilog (qflow) */
/* With bit-blasted vectors */
/* With power connections converted to binary 1, 0 */

module adder(
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
wire [5:0] _0_ ;
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

XOR2X1 _28_ (
    .A(\G10x.Gb ),
    .B(\GPH1.H ),
    .Y(_0_[1])
);

XOR2X1 _29_ (
    .A(G10),
    .B(\GPH2.H ),
    .Y(_0_[2])
);

XOR2X1 _30_ (
    .A(G20),
    .B(\GPH3.H ),
    .Y(_0_[3])
);

XOR2X1 _31_ (
    .A(G30),
    .B(\GPH4.H ),
    .Y(_0_[4])
);

XOR2X1 _32_ (
    .A(G40),
    .B(\GPH5.H ),
    .Y(_0_[5])
);

BUFX2 _33_ (
    .A(\GPH0.H ),
    .Y(S[0])
);

BUFX2 _34_ (
    .A(_0_[1]),
    .Y(S[1])
);

BUFX2 _35_ (
    .A(_0_[2]),
    .Y(S[2])
);

BUFX2 _36_ (
    .A(_0_[3]),
    .Y(S[3])
);

BUFX2 _37_ (
    .A(_0_[4]),
    .Y(S[4])
);

BUFX2 _38_ (
    .A(_0_[5]),
    .Y(S[5])
);

BUFX2 _39_ (
    .A(_1_),
    .Y(cout)
);

INVX1 _40_ (
    .A(\G10x.Ga ),
    .Y(_2_)
);

NAND2X1 _41_ (
    .A(\G10x.Gb ),
    .B(\G10x.Pa ),
    .Y(_3_)
);

NAND2X1 _42_ (
    .A(_2_),
    .B(_3_),
    .Y(G10)
);

INVX1 _43_ (
    .A(\G20x.Ga ),
    .Y(_4_)
);

NAND2X1 _44_ (
    .A(G10),
    .B(\G20x.Pa ),
    .Y(_5_)
);

NAND2X1 _45_ (
    .A(_4_),
    .B(_5_),
    .Y(G20)
);

INVX1 _46_ (
    .A(\G30x.Ga ),
    .Y(_6_)
);

NAND2X1 _47_ (
    .A(G10),
    .B(\G30x.Pa ),
    .Y(_7_)
);

NAND2X1 _48_ (
    .A(_6_),
    .B(_7_),
    .Y(G30)
);

INVX1 _49_ (
    .A(\G40x.Ga ),
    .Y(_8_)
);

NAND2X1 _50_ (
    .A(G30),
    .B(\G40x.Pa ),
    .Y(_9_)
);

NAND2X1 _51_ (
    .A(_8_),
    .B(_9_),
    .Y(G40)
);

INVX1 _52_ (
    .A(\G50x.Ga ),
    .Y(_10_)
);

NAND2X1 _53_ (
    .A(G30),
    .B(\G50x.Pa ),
    .Y(_11_)
);

NAND2X1 _54_ (
    .A(_10_),
    .B(_11_),
    .Y(_1_)
);

INVX1 _55_ (
    .A(\GP32.Ga ),
    .Y(_12_)
);

NAND2X1 _56_ (
    .A(\G20x.Ga ),
    .B(\GP32.Pa ),
    .Y(_13_)
);

NAND2X1 _57_ (
    .A(_12_),
    .B(_13_),
    .Y(\G30x.Ga )
);

AND2X2 _58_ (
    .A(\GP32.Pa ),
    .B(\G20x.Pa ),
    .Y(\G30x.Pa )
);

INVX1 _59_ (
    .A(\GP54.Ga ),
    .Y(_14_)
);

NAND2X1 _60_ (
    .A(\G40x.Ga ),
    .B(\GP54.Pa ),
    .Y(_15_)
);

NAND2X1 _61_ (
    .A(_14_),
    .B(_15_),
    .Y(\G50x.Ga )
);

AND2X2 _62_ (
    .A(\GP54.Pa ),
    .B(\G40x.Pa ),
    .Y(\G50x.Pa )
);

INVX1 _63_ (
    .A(X[0]),
    .Y(_17_)
);

NOR2X1 _64_ (
    .A(_16_),
    .B(_17_),
    .Y(\G10x.Gb )
);

XOR2X1 _65_ (
    .A(Y[0]),
    .B(X[0]),
    .Y(\GPH0.H )
);

INVX1 _66_ (
    .A(Y[0]),
    .Y(_16_)
);

INVX1 _67_ (
    .A(X[1]),
    .Y(_19_)
);

NOR2X1 _68_ (
    .A(_18_),
    .B(_19_),
    .Y(\G10x.Ga )
);

NAND2X1 _69_ (
    .A(_18_),
    .B(_19_),
    .Y(\G10x.Pa )
);

XOR2X1 _70_ (
    .A(Y[1]),
    .B(X[1]),
    .Y(\GPH1.H )
);

INVX1 _71_ (
    .A(Y[1]),
    .Y(_18_)
);

INVX1 _72_ (
    .A(X[2]),
    .Y(_21_)
);

NOR2X1 _73_ (
    .A(_20_),
    .B(_21_),
    .Y(\G20x.Ga )
);

NAND2X1 _74_ (
    .A(_20_),
    .B(_21_),
    .Y(\G20x.Pa )
);

XOR2X1 _75_ (
    .A(Y[2]),
    .B(X[2]),
    .Y(\GPH2.H )
);

INVX1 _76_ (
    .A(Y[2]),
    .Y(_20_)
);

INVX1 _77_ (
    .A(X[3]),
    .Y(_23_)
);

NOR2X1 _78_ (
    .A(_22_),
    .B(_23_),
    .Y(\GP32.Ga )
);

NAND2X1 _79_ (
    .A(_22_),
    .B(_23_),
    .Y(\GP32.Pa )
);

XOR2X1 _80_ (
    .A(Y[3]),
    .B(X[3]),
    .Y(\GPH3.H )
);

INVX1 _81_ (
    .A(Y[3]),
    .Y(_22_)
);

INVX1 _82_ (
    .A(X[4]),
    .Y(_25_)
);

NOR2X1 _83_ (
    .A(_24_),
    .B(_25_),
    .Y(\G40x.Ga )
);

NAND2X1 _84_ (
    .A(_24_),
    .B(_25_),
    .Y(\G40x.Pa )
);

XOR2X1 _85_ (
    .A(Y[4]),
    .B(X[4]),
    .Y(\GPH4.H )
);

INVX1 _86_ (
    .A(Y[4]),
    .Y(_24_)
);

INVX1 _87_ (
    .A(X[5]),
    .Y(_27_)
);

NOR2X1 _88_ (
    .A(_26_),
    .B(_27_),
    .Y(\GP54.Ga )
);

NAND2X1 _89_ (
    .A(_26_),
    .B(_27_),
    .Y(\GP54.Pa )
);

XOR2X1 _90_ (
    .A(Y[5]),
    .B(X[5]),
    .Y(\GPH5.H )
);

INVX1 _91_ (
    .A(Y[5]),
    .Y(_26_)
);

endmodule
