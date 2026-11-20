-- Firebird.4 Firebird4
SELECT
	("r".A + "r".B),
	("r".A - "r".B),
	("r".A * "r".B),
	("r".A / "r".B),
	Mod("r".A, "r".B),
	Bin_And("r".A, "r".B),
	Bin_Or("r".A, "r".B),
	Bin_Xor("r".A, "r".B),
	(-"r".A),
	BIN_NOT("r".A)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): green
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): green
