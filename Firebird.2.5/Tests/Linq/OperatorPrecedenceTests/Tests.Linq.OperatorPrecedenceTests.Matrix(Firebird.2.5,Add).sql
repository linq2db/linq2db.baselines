-- Firebird.2.5 Firebird
SELECT
	"r".A - "r".B + "r".C,
	"r".A - "r".B + "r".C,
	"r".A * "r".B + "r".C,
	"r".A + "r".B * "r".C,
	"r".A * "r".B + "r".C,
	"r".A + "r".B * "r".C,
	"r".A / "r".B + "r".C,
	"r".A + "r".B / "r".C,
	"r".A / "r".B + "r".C,
	"r".A + "r".B / "r".C,
	Mod("r".A, "r".B) + "r".C,
	"r".A + Mod("r".B, "r".C),
	Mod("r".A, "r".B) + "r".C,
	"r".A + Mod("r".B, "r".C),
	Bin_And("r".A, "r".B) + "r".C,
	"r".A + Bin_And("r".B, "r".C),
	Bin_And("r".A, "r".B) + "r".C,
	"r".A + Bin_And("r".B, "r".C),
	Bin_Or("r".A, "r".B) + "r".C,
	"r".A + Bin_Or("r".B, "r".C),
	Bin_Or("r".A, "r".B) + "r".C,
	"r".A + Bin_Or("r".B, "r".C),
	Bin_Xor("r".A, "r".B) + "r".C,
	"r".A + Bin_Xor("r".B, "r".C),
	Bin_Xor("r".A, "r".B) + "r".C,
	"r".A + Bin_Xor("r".B, "r".C),
	("r".A + "r".B) + "r".C,
	"r".A + ("r".B + "r".C),
	("r".A + -6) + "r".C,
	("r".A - "r".B) + "r".C,
	"r".A + ("r".B - "r".C),
	("r".A - -6) + "r".C,
	"r".A * "r".B + "r".C,
	"r".A + "r".B * "r".C,
	"r".A * -6 + "r".C,
	"r".A / "r".B + "r".C,
	"r".A + "r".B / "r".C,
	"r".A / -6 + "r".C,
	("r".A + "r".B) + "r".C,
	"r".A + ("r".B + "r".C),
	("r".A + -6) + "r".C,
	"r".A - "r".B,
	-"r".B + "r".C,
	"r".A - "r".B + "r".C,
	"r".A * -"r".B + "r".C,
	"r".A / -"r".B + "r".C,
	Mod("r".A, -"r".B) + "r".C,
	Bin_And("r".A, -"r".B) + "r".C,
	Bin_Or("r".A, -"r".B) + "r".C,
	Bin_Xor("r".A, -"r".B) + "r".C,
	"r".A + BIN_NOT("r".B),
	BIN_NOT("r".B) + "r".C,
	"r".A + BIN_NOT("r".B) + "r".C,
	"r".A * BIN_NOT("r".B) + "r".C,
	Mod("r".A, BIN_NOT("r".B)) + "r".C,
	Bin_And("r".A, BIN_NOT("r".B)) + "r".C,
	Bin_Or("r".A, BIN_NOT("r".B)) + "r".C,
	Bin_Xor("r".A, BIN_NOT("r".B)) + "r".C,
	"r".A + -5,
	-5 + "r".C,
	"r".A + -5 + "r".C,
	"r".A - -5 + "r".C,
	"r".A * -5 + "r".C,
	Mod("r".A, -5) + "r".C,
	Bin_And("r".A, -5) + "r".C,
	Bin_Or("r".A, -5) + "r".C,
	Bin_Xor("r".A, -5) + "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r".A + -5,
	-5 + "r".C,
	"r".A + -5 + "r".C,
	"r".A - -5 + "r".C,
	"r".A * -5 + "r".C,
	Mod("r".A, -5) + "r".C,
	Bin_And("r".A, -5) + "r".C,
	Bin_Or("r".A, -5) + "r".C,
	Bin_Xor("r".A, -5) + "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell Add/Add(Add(a,b),c): skipped
-- cell Add/Add(a,Add(b,c)): skipped
-- cell Add/Add(AsNotNull(Add(a,b)),c): skipped
-- cell Add/Add(a,AsNotNull(Add(b,c))): skipped
-- cell Add/Add(Sub(a,b),c): green
-- cell Add/Add(a,Sub(b,c)): skipped
-- cell Add/Add(AsNotNull(Sub(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Sub(b,c))): skipped
-- cell Add/Add(Mul(a,b),c): green
-- cell Add/Add(a,Mul(b,c)): green
-- cell Add/Add(AsNotNull(Mul(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mul(b,c))): green
-- cell Add/Add(Div(a,b),c): green
-- cell Add/Add(a,Div(b,c)): green
-- cell Add/Add(AsNotNull(Div(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Div(b,c))): green
-- cell Add/Add(Mod(a,b),c): green
-- cell Add/Add(a,Mod(b,c)): green
-- cell Add/Add(AsNotNull(Mod(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mod(b,c))): green
-- cell Add/Add(And(a,b),c): green
-- cell Add/Add(a,And(b,c)): green
-- cell Add/Add(AsNotNull(And(a,b)),c): green
-- cell Add/Add(a,AsNotNull(And(b,c))): green
-- cell Add/Add(Or(a,b),c): green
-- cell Add/Add(a,Or(b,c)): green
-- cell Add/Add(AsNotNull(Or(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Or(b,c))): green
-- cell Add/Add(Xor(a,b),c): green
-- cell Add/Add(a,Xor(b,c)): green
-- cell Add/Add(AsNotNull(Xor(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Xor(b,c))): green
-- cell Add/Add(TAdd(a,b),c): green
-- cell Add/Add(a,TAdd(b,c)): green
-- cell Add/Add(TAdd(a,NegLit),c): green
-- cell Add/Add(TSub(a,b),c): green
-- cell Add/Add(a,TSub(b,c)): green
-- cell Add/Add(TSub(a,NegLit),c): green
-- cell Add/Add(TMul(a,b),c): green
-- cell Add/Add(a,TMul(b,c)): green
-- cell Add/Add(TMul(a,NegLit),c): green
-- cell Add/Add(TDiv(a,b),c): green
-- cell Add/Add(a,TDiv(b,c)): green
-- cell Add/Add(TDiv(a,NegLit),c): green
-- cell Add/Add(TAddOffset(a,b),c): green
-- cell Add/Add(a,TAddOffset(b,c)): green
-- cell Add/Add(TAddOffset(a,NegLit),c): green
-- cell Add/Add(a,Neg(b)): green
-- cell Add/Add(Neg(b),c): green
-- cell Add/Add(Add(a,Neg(b)),c): green
-- cell Add/Add(Sub(a,Neg(b)),c): skipped
-- cell Add/Add(Mul(a,Neg(b)),c): green
-- cell Add/Add(Div(a,Neg(b)),c): green
-- cell Add/Add(Mod(a,Neg(b)),c): green
-- cell Add/Add(And(a,Neg(b)),c): green
-- cell Add/Add(Or(a,Neg(b)),c): green
-- cell Add/Add(Xor(a,Neg(b)),c): green
-- cell Add/Add(a,Not(b)): green
-- cell Add/Add(Not(b),c): green
-- cell Add/Add(Add(a,Not(b)),c): green
-- cell Add/Add(Sub(a,Not(b)),c): skipped
-- cell Add/Add(Mul(a,Not(b)),c): green
-- cell Add/Add(Div(a,Not(b)),c): skipped
-- cell Add/Add(Mod(a,Not(b)),c): green
-- cell Add/Add(And(a,Not(b)),c): green
-- cell Add/Add(Or(a,Not(b)),c): green
-- cell Add/Add(Xor(a,Not(b)),c): green
-- cell Add/Add(a,NegLit(b)): green
-- cell Add/Add(NegLit(b),c): green
-- cell Add/Add(Add(a,NegLit(b)),c): green
-- cell Add/Add(Sub(a,NegLit(b)),c): green
-- cell Add/Add(Mul(a,NegLit(b)),c): green
-- cell Add/Add(Div(a,NegLit(b)),c): skipped
-- cell Add/Add(Mod(a,NegLit(b)),c): green
-- cell Add/Add(And(a,NegLit(b)),c): green
-- cell Add/Add(Or(a,NegLit(b)),c): green
-- cell Add/Add(Xor(a,NegLit(b)),c): green
-- cell Add/Add(a,NegParam(b)): green
-- cell Add/Add(NegParam(b),c): green
-- cell Add/Add(Add(a,NegParam(b)),c): green
-- cell Add/Add(Sub(a,NegParam(b)),c): green
-- cell Add/Add(Mul(a,NegParam(b)),c): green
-- cell Add/Add(Div(a,NegParam(b)),c): skipped
-- cell Add/Add(Mod(a,NegParam(b)),c): green
-- cell Add/Add(And(a,NegParam(b)),c): green
-- cell Add/Add(Or(a,NegParam(b)),c): green
-- cell Add/Add(Xor(a,NegParam(b)),c): green
