-- Firebird.2.5 Firebird
SELECT
	Bin_And("r".A + "r".B, "r".C),
	Bin_And("r".A, "r".B + "r".C),
	Bin_And("r".A + "r".B, "r".C),
	Bin_And("r".A, "r".B + "r".C),
	Bin_And("r".A - "r".B, "r".C),
	Bin_And("r".A, "r".B - "r".C),
	Bin_And("r".A - "r".B, "r".C),
	Bin_And("r".A, "r".B - "r".C),
	Bin_And("r".A * "r".B, "r".C),
	Bin_And("r".A, "r".B * "r".C),
	Bin_And("r".A * "r".B, "r".C),
	Bin_And("r".A, "r".B * "r".C),
	Bin_And("r".A, "r".B / "r".C),
	Bin_And("r".A, "r".B / "r".C),
	Bin_And("r".A, Mod("r".B, "r".C)),
	Bin_And("r".A, Mod("r".B, "r".C)),
	Bin_And(Bin_Or("r".A, "r".B), "r".C),
	Bin_And("r".A, Bin_Or("r".B, "r".C)),
	Bin_And(Bin_Or("r".A, "r".B), "r".C),
	Bin_And("r".A, Bin_Or("r".B, "r".C)),
	Bin_And(Bin_Xor("r".A, "r".B), "r".C),
	Bin_And("r".A, Bin_Xor("r".B, "r".C)),
	Bin_And(Bin_Xor("r".A, "r".B), "r".C),
	Bin_And("r".A, Bin_Xor("r".B, "r".C)),
	Bin_And("r".A, -"r".B),
	Bin_And(-"r".B, "r".C),
	Bin_And("r".A - "r".B, "r".C),
	Bin_And("r".A + "r".B, "r".C),
	Bin_And("r".A * -"r".B, "r".C),
	Bin_And(Bin_And("r".A, -"r".B), "r".C),
	Bin_And(Bin_Or("r".A, -"r".B), "r".C),
	Bin_And(Bin_Xor("r".A, -"r".B), "r".C),
	Bin_And("r".A, BIN_NOT("r".B)),
	Bin_And(BIN_NOT("r".B), "r".C),
	Bin_And("r".A + BIN_NOT("r".B), "r".C),
	Bin_And("r".A - BIN_NOT("r".B), "r".C),
	Bin_And("r".A * BIN_NOT("r".B), "r".C),
	Bin_And("r".A / BIN_NOT("r".B), "r".C),
	Bin_And(Mod("r".A, BIN_NOT("r".B)), "r".C),
	Bin_And(Bin_And("r".A, BIN_NOT("r".B)), "r".C),
	Bin_And(Bin_Or("r".A, BIN_NOT("r".B)), "r".C),
	Bin_And(Bin_Xor("r".A, BIN_NOT("r".B)), "r".C),
	Bin_And("r".A, -5),
	Bin_And(-5, "r".C),
	Bin_And("r".A + -5, "r".C),
	Bin_And("r".A - -5, "r".C),
	Bin_And("r".A * -5, "r".C),
	Bin_And("r".A / -5, "r".C),
	Bin_And(Mod("r".A, -5), "r".C),
	Bin_And(Bin_And("r".A, -5), "r".C),
	Bin_And(Bin_Or("r".A, -5), "r".C),
	Bin_And(Bin_Xor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	Bin_And("r".A, -5),
	Bin_And(-5, "r".C),
	Bin_And("r".A + -5, "r".C),
	Bin_And("r".A - -5, "r".C),
	Bin_And("r".A * -5, "r".C),
	Bin_And("r".A / -5, "r".C),
	Bin_And(Mod("r".A, -5), "r".C),
	Bin_And(Bin_And("r".A, -5), "r".C),
	Bin_And(Bin_Or("r".A, -5), "r".C),
	Bin_And(Bin_Xor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell And/And(Add(a,b),c): green
-- cell And/And(a,Add(b,c)): green
-- cell And/And(AsNotNull(Add(a,b)),c): green
-- cell And/And(a,AsNotNull(Add(b,c))): green
-- cell And/And(Sub(a,b),c): green
-- cell And/And(a,Sub(b,c)): green
-- cell And/And(AsNotNull(Sub(a,b)),c): green
-- cell And/And(a,AsNotNull(Sub(b,c))): green
-- cell And/And(Mul(a,b),c): green
-- cell And/And(a,Mul(b,c)): green
-- cell And/And(AsNotNull(Mul(a,b)),c): green
-- cell And/And(a,AsNotNull(Mul(b,c))): green
-- cell And/And(Div(a,b),c): skipped
-- cell And/And(a,Div(b,c)): green
-- cell And/And(AsNotNull(Div(a,b)),c): skipped
-- cell And/And(a,AsNotNull(Div(b,c))): green
-- cell And/And(Mod(a,b),c): skipped
-- cell And/And(a,Mod(b,c)): green
-- cell And/And(AsNotNull(Mod(a,b)),c): skipped
-- cell And/And(a,AsNotNull(Mod(b,c))): green
-- cell And/And(And(a,b),c): skipped
-- cell And/And(a,And(b,c)): skipped
-- cell And/And(AsNotNull(And(a,b)),c): skipped
-- cell And/And(a,AsNotNull(And(b,c))): skipped
-- cell And/And(Or(a,b),c): green
-- cell And/And(a,Or(b,c)): green
-- cell And/And(AsNotNull(Or(a,b)),c): green
-- cell And/And(a,AsNotNull(Or(b,c))): green
-- cell And/And(Xor(a,b),c): green
-- cell And/And(a,Xor(b,c)): green
-- cell And/And(AsNotNull(Xor(a,b)),c): green
-- cell And/And(a,AsNotNull(Xor(b,c))): green
-- cell And/And(a,Neg(b)): green
-- cell And/And(Neg(b),c): green
-- cell And/And(Add(a,Neg(b)),c): green
-- cell And/And(Sub(a,Neg(b)),c): green
-- cell And/And(Mul(a,Neg(b)),c): green
-- cell And/And(Div(a,Neg(b)),c): skipped
-- cell And/And(Mod(a,Neg(b)),c): skipped
-- cell And/And(And(a,Neg(b)),c): green
-- cell And/And(Or(a,Neg(b)),c): green
-- cell And/And(Xor(a,Neg(b)),c): green
-- cell And/And(a,Not(b)): green
-- cell And/And(Not(b),c): green
-- cell And/And(Add(a,Not(b)),c): green
-- cell And/And(Sub(a,Not(b)),c): green
-- cell And/And(Mul(a,Not(b)),c): green
-- cell And/And(Div(a,Not(b)),c): green
-- cell And/And(Mod(a,Not(b)),c): green
-- cell And/And(And(a,Not(b)),c): green
-- cell And/And(Or(a,Not(b)),c): green
-- cell And/And(Xor(a,Not(b)),c): green
-- cell And/And(a,NegLit(b)): green
-- cell And/And(NegLit(b),c): green
-- cell And/And(Add(a,NegLit(b)),c): green
-- cell And/And(Sub(a,NegLit(b)),c): green
-- cell And/And(Mul(a,NegLit(b)),c): green
-- cell And/And(Div(a,NegLit(b)),c): green
-- cell And/And(Mod(a,NegLit(b)),c): green
-- cell And/And(And(a,NegLit(b)),c): green
-- cell And/And(Or(a,NegLit(b)),c): green
-- cell And/And(Xor(a,NegLit(b)),c): green
-- cell And/And(a,NegParam(b)): green
-- cell And/And(NegParam(b),c): green
-- cell And/And(Add(a,NegParam(b)),c): green
-- cell And/And(Sub(a,NegParam(b)),c): green
-- cell And/And(Mul(a,NegParam(b)),c): green
-- cell And/And(Div(a,NegParam(b)),c): green
-- cell And/And(Mod(a,NegParam(b)),c): green
-- cell And/And(And(a,NegParam(b)),c): green
-- cell And/And(Or(a,NegParam(b)),c): green
-- cell And/And(Xor(a,NegParam(b)),c): green
