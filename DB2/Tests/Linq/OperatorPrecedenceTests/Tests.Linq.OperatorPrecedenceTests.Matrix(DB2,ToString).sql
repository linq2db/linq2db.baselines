-- DB2 DB2.LUW DB2LUW
SELECT
	RTrim(Char("r".A + "r".B)),
	RTrim(Char("r".A - "r".B)),
	RTrim(Char("r".A * "r".B)),
	RTrim(Char("r".A / "r".B)),
	RTrim(Char(Mod("r".A, "r".B))),
	RTrim(Char(BitAnd("r".A, "r".B))),
	RTrim(Char(BitOr("r".A, "r".B))),
	RTrim(Char(BitXor("r".A, "r".B))),
	RTrim(Char(-"r".A)),
	RTrim(Char(BITNOT("r".A)))
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
