-- Firebird.2.5 Firebird
SELECT
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A * "r".B) / "r".C,
	"r".A / ("r".B * "r".C),
	("r".A * "r".B) / "r".C,
	"r".A / ("r".B * "r".C),
	("r".A / "r".B) / "r".C,
	"r".A / ("r".B / "r".C),
	("r".A / "r".B) / "r".C,
	"r".A / ("r".B / "r".C),
	Bin_And("r".A, "r".B) / "r".C,
	Bin_And("r".A, "r".B) / "r".C,
	Bin_Or("r".A, "r".B) / "r".C,
	"r".A / Bin_Or("r".B, "r".C),
	Bin_Or("r".A, "r".B) / "r".C,
	"r".A / Bin_Or("r".B, "r".C),
	Bin_Xor("r".A, "r".B) / "r".C,
	"r".A / Bin_Xor("r".B, "r".C),
	Bin_Xor("r".A, "r".B) / "r".C,
	"r".A / Bin_Xor("r".B, "r".C),
	"r".A / -"r".B,
	("r".A - "r".B) / "r".C,
	("r".A + "r".B) / "r".C,
	("r".A * -"r".B) / "r".C,
	("r".A / -"r".B) / "r".C,
	Bin_And("r".A, -"r".B) / "r".C,
	Bin_Or("r".A, -"r".B) / "r".C,
	Bin_Xor("r".A, -"r".B) / "r".C,
	"r".A / BIN_NOT("r".B),
	BIN_NOT("r".B) / "r".C,
	("r".A + BIN_NOT("r".B)) / "r".C,
	("r".A - BIN_NOT("r".B)) / "r".C,
	("r".A * BIN_NOT("r".B)) / "r".C,
	("r".A / BIN_NOT("r".B)) / "r".C,
	Mod("r".A, BIN_NOT("r".B)) / "r".C,
	Bin_And("r".A, BIN_NOT("r".B)) / "r".C,
	Bin_Or("r".A, BIN_NOT("r".B)) / "r".C,
	Bin_Xor("r".A, BIN_NOT("r".B)) / "r".C,
	"r".A / -5,
	-5 / "r".C,
	("r".A + -5) / "r".C,
	("r".A - -5) / "r".C,
	("r".A * -5) / "r".C,
	("r".A / -5) / "r".C,
	Mod("r".A, -5) / "r".C,
	Bin_And("r".A, -5) / "r".C,
	Bin_Or("r".A, -5) / "r".C,
	Bin_Xor("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"r".A / -5,
	-5 / "r".C,
	("r".A + -5) / "r".C,
	("r".A - -5) / "r".C,
	("r".A * -5) / "r".C,
	("r".A / -5) / "r".C,
	Mod("r".A, -5) / "r".C,
	Bin_And("r".A, -5) / "r".C,
	Bin_Or("r".A, -5) / "r".C,
	Bin_Xor("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell Div/Div(Add(a,b),c): green
-- cell Div/Div(a,Add(b,c)): green
-- cell Div/Div(AsNotNull(Add(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Add(b,c))): green
-- cell Div/Div(Sub(a,b),c): green
-- cell Div/Div(a,Sub(b,c)): green
-- cell Div/Div(AsNotNull(Sub(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Sub(b,c))): green
-- cell Div/Div(Mul(a,b),c): green
-- cell Div/Div(a,Mul(b,c)): green
-- cell Div/Div(AsNotNull(Mul(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Mul(b,c))): green
-- cell Div/Div(Div(a,b),c): green
-- cell Div/Div(a,Div(b,c)): green
-- cell Div/Div(AsNotNull(Div(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Div(b,c))): green
-- cell Div/Div(Mod(a,b),c): skipped
-- cell Div/Div(a,Mod(b,c)): skipped
-- cell Div/Div(AsNotNull(Mod(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(Mod(b,c))): skipped
-- cell Div/Div(And(a,b),c): green
-- cell Div/Div(a,And(b,c)): skipped
-- cell Div/Div(AsNotNull(And(a,b)),c): green
-- cell Div/Div(a,AsNotNull(And(b,c))): skipped
-- cell Div/Div(Or(a,b),c): green
-- cell Div/Div(a,Or(b,c)): green
-- cell Div/Div(AsNotNull(Or(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Or(b,c))): green
-- cell Div/Div(Xor(a,b),c): green
-- cell Div/Div(a,Xor(b,c)): green
-- cell Div/Div(AsNotNull(Xor(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Xor(b,c))): green
-- cell Div/Div(a,Neg(b)): green
-- cell Div/Div(Neg(b),c): skipped
-- cell Div/Div(Add(a,Neg(b)),c): green
-- cell Div/Div(Sub(a,Neg(b)),c): green
-- cell Div/Div(Mul(a,Neg(b)),c): green
-- cell Div/Div(Div(a,Neg(b)),c): green
-- cell Div/Div(Mod(a,Neg(b)),c): skipped
-- cell Div/Div(And(a,Neg(b)),c): green
-- cell Div/Div(Or(a,Neg(b)),c): green
-- cell Div/Div(Xor(a,Neg(b)),c): green
-- cell Div/Div(a,Not(b)): green
-- cell Div/Div(Not(b),c): green
-- cell Div/Div(Add(a,Not(b)),c): green
-- cell Div/Div(Sub(a,Not(b)),c): green
-- cell Div/Div(Mul(a,Not(b)),c): green
-- cell Div/Div(Div(a,Not(b)),c): green
-- cell Div/Div(Mod(a,Not(b)),c): green
-- cell Div/Div(And(a,Not(b)),c): green
-- cell Div/Div(Or(a,Not(b)),c): green
-- cell Div/Div(Xor(a,Not(b)),c): green
-- cell Div/Div(a,NegLit(b)): green
-- cell Div/Div(NegLit(b),c): green
-- cell Div/Div(Add(a,NegLit(b)),c): green
-- cell Div/Div(Sub(a,NegLit(b)),c): green
-- cell Div/Div(Mul(a,NegLit(b)),c): green
-- cell Div/Div(Div(a,NegLit(b)),c): green
-- cell Div/Div(Mod(a,NegLit(b)),c): green
-- cell Div/Div(And(a,NegLit(b)),c): green
-- cell Div/Div(Or(a,NegLit(b)),c): green
-- cell Div/Div(Xor(a,NegLit(b)),c): green
-- cell Div/Div(a,NegParam(b)): green
-- cell Div/Div(NegParam(b),c): green
-- cell Div/Div(Add(a,NegParam(b)),c): green
-- cell Div/Div(Sub(a,NegParam(b)),c): green
-- cell Div/Div(Mul(a,NegParam(b)),c): green
-- cell Div/Div(Div(a,NegParam(b)),c): green
-- cell Div/Div(Mod(a,NegParam(b)),c): green
-- cell Div/Div(And(a,NegParam(b)),c): green
-- cell Div/Div(Or(a,NegParam(b)),c): green
-- cell Div/Div(Xor(a,NegParam(b)),c): green
