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

