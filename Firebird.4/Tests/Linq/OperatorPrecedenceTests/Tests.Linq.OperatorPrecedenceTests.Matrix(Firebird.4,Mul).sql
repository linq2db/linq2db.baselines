-- Firebird.4 Firebird4
SELECT
	("r".A + "r".B) * "r".C,
	"r".A * ("r".B + "r".C),
	("r".A + "r".B) * "r".C,
	"r".A * ("r".B + "r".C),
	("r".A - "r".B) * "r".C,
	"r".A * ("r".B - "r".C),
	("r".A - "r".B) * "r".C,
	"r".A * ("r".B - "r".C),
	("r".A / "r".B) * "r".C,
	("r".A / "r".B) * "r".C,
	Bin_And("r".A, "r".B) * "r".C,
	"r".A * Bin_And("r".B, "r".C),
	Bin_And("r".A, "r".B) * "r".C,
	"r".A * Bin_And("r".B, "r".C),
	Bin_Or("r".A, "r".B) * "r".C,
	"r".A * Bin_Or("r".B, "r".C),
	Bin_Or("r".A, "r".B) * "r".C,
	"r".A * Bin_Or("r".B, "r".C),
	Bin_Xor("r".A, "r".B) * "r".C,
	"r".A * Bin_Xor("r".B, "r".C),
	Bin_Xor("r".A, "r".B) * "r".C,
	"r".A * Bin_Xor("r".B, "r".C),
	"r".A * -"r".B,
	("r".A - "r".B) * "r".C,
	("r".A + "r".B) * "r".C,
	("r".A / -"r".B) * "r".C,
	Bin_And("r".A, -"r".B) * "r".C,
	Bin_Or("r".A, -"r".B) * "r".C,
	Bin_Xor("r".A, -"r".B) * "r".C,
	"r".A * BIN_NOT("r".B),
	BIN_NOT("r".B) * "r".C,
	("r".A + BIN_NOT("r".B)) * "r".C,
	("r".A - BIN_NOT("r".B)) * "r".C,
	("r".A * BIN_NOT("r".B)) * "r".C,
	Mod("r".A, BIN_NOT("r".B)) * "r".C,
	Bin_And("r".A, BIN_NOT("r".B)) * "r".C,
	Bin_Or("r".A, BIN_NOT("r".B)) * "r".C,
	Bin_Xor("r".A, BIN_NOT("r".B)) * "r".C,
	"r".A * -5,
	-5 * "r".C,
	("r".A + -5) * "r".C,
	("r".A - -5) * "r".C,
	("r".A * -5) * "r".C,
	Mod("r".A, -5) * "r".C,
	Bin_And("r".A, -5) * "r".C,
	Bin_Or("r".A, -5) * "r".C,
	Bin_Xor("r".A, -5) * "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.4 Firebird4
SELECT
	"r".A * -5,
	-5 * "r".C,
	("r".A + -5) * "r".C,
	("r".A - -5) * "r".C,
	("r".A * -5) * "r".C,
	Mod("r".A, -5) * "r".C,
	Bin_And("r".A, -5) * "r".C,
	Bin_Or("r".A, -5) * "r".C,
	Bin_Xor("r".A, -5) * "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell Mul/Mul(Add(a,b),c): green
-- cell Mul/Mul(a,Add(b,c)): green
-- cell Mul/Mul(AsNotNull(Add(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Add(b,c))): green
-- cell Mul/Mul(Sub(a,b),c): green
-- cell Mul/Mul(a,Sub(b,c)): green
-- cell Mul/Mul(AsNotNull(Sub(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Sub(b,c))): green
-- cell Mul/Mul(Mul(a,b),c): skipped
-- cell Mul/Mul(a,Mul(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Mul(a,b)),c): skipped
-- cell Mul/Mul(a,AsNotNull(Mul(b,c))): skipped
-- cell Mul/Mul(Div(a,b),c): green
-- cell Mul/Mul(a,Div(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Div(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Div(b,c))): skipped
-- cell Mul/Mul(Mod(a,b),c): skipped
-- cell Mul/Mul(a,Mod(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Mod(a,b)),c): skipped
-- cell Mul/Mul(a,AsNotNull(Mod(b,c))): skipped
-- cell Mul/Mul(And(a,b),c): green
-- cell Mul/Mul(a,And(b,c)): green
-- cell Mul/Mul(AsNotNull(And(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(And(b,c))): green
-- cell Mul/Mul(Or(a,b),c): green
-- cell Mul/Mul(a,Or(b,c)): green
-- cell Mul/Mul(AsNotNull(Or(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Or(b,c))): green
-- cell Mul/Mul(Xor(a,b),c): green
-- cell Mul/Mul(a,Xor(b,c)): green
-- cell Mul/Mul(AsNotNull(Xor(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Xor(b,c))): green
-- cell Mul/Mul(a,Neg(b)): green
-- cell Mul/Mul(Neg(b),c): skipped
-- cell Mul/Mul(Add(a,Neg(b)),c): green
-- cell Mul/Mul(Sub(a,Neg(b)),c): green
-- cell Mul/Mul(Mul(a,Neg(b)),c): skipped
-- cell Mul/Mul(Div(a,Neg(b)),c): green
-- cell Mul/Mul(Mod(a,Neg(b)),c): skipped
-- cell Mul/Mul(And(a,Neg(b)),c): green
-- cell Mul/Mul(Or(a,Neg(b)),c): green
-- cell Mul/Mul(Xor(a,Neg(b)),c): green
-- cell Mul/Mul(a,Not(b)): green
-- cell Mul/Mul(Not(b),c): green
-- cell Mul/Mul(Add(a,Not(b)),c): green
-- cell Mul/Mul(Sub(a,Not(b)),c): green
-- cell Mul/Mul(Mul(a,Not(b)),c): green
-- cell Mul/Mul(Div(a,Not(b)),c): skipped
-- cell Mul/Mul(Mod(a,Not(b)),c): green
-- cell Mul/Mul(And(a,Not(b)),c): green
-- cell Mul/Mul(Or(a,Not(b)),c): green
-- cell Mul/Mul(Xor(a,Not(b)),c): green
-- cell Mul/Mul(a,NegLit(b)): green
-- cell Mul/Mul(NegLit(b),c): green
-- cell Mul/Mul(Add(a,NegLit(b)),c): green
-- cell Mul/Mul(Sub(a,NegLit(b)),c): green
-- cell Mul/Mul(Mul(a,NegLit(b)),c): green
-- cell Mul/Mul(Div(a,NegLit(b)),c): skipped
-- cell Mul/Mul(Mod(a,NegLit(b)),c): green
-- cell Mul/Mul(And(a,NegLit(b)),c): green
-- cell Mul/Mul(Or(a,NegLit(b)),c): green
-- cell Mul/Mul(Xor(a,NegLit(b)),c): green
-- cell Mul/Mul(a,NegParam(b)): green
-- cell Mul/Mul(NegParam(b),c): green
-- cell Mul/Mul(Add(a,NegParam(b)),c): green
-- cell Mul/Mul(Sub(a,NegParam(b)),c): green
-- cell Mul/Mul(Mul(a,NegParam(b)),c): green
-- cell Mul/Mul(Div(a,NegParam(b)),c): skipped
-- cell Mul/Mul(Mod(a,NegParam(b)),c): green
-- cell Mul/Mul(And(a,NegParam(b)),c): green
-- cell Mul/Mul(Or(a,NegParam(b)),c): green
-- cell Mul/Mul(Xor(a,NegParam(b)),c): green
