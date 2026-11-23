-- DB2 DB2.LUW DB2LUW
SELECT
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod(Mod("r".A, "r".B), "r".C),
	Mod(Mod("r".A, "r".B), "r".C),
	Mod(BitAnd("r".A, "r".B), "r".C),
	Mod(BitAnd("r".A, "r".B), "r".C),
	Mod(BitOr("r".A, "r".B), "r".C),
	Mod("r".A, BitOr("r".B, "r".C)),
	Mod(BitOr("r".A, "r".B), "r".C),
	Mod("r".A, BitOr("r".B, "r".C)),
	Mod(BitXor("r".A, "r".B), "r".C),
	Mod("r".A, BitXor("r".B, "r".C)),
	Mod(BitXor("r".A, "r".B), "r".C),
	Mod("r".A, BitXor("r".B, "r".C)),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + -6, "r".C),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A, "r".B - "r".C),
	Mod("r".A - -6, "r".C),
	Mod("r".A * "r".B, "r".C),
	Mod("r".A, "r".B * "r".C),
	Mod("r".A * -6, "r".C),
	Mod("r".A / "r".B, "r".C),
	Mod("r".A, "r".B / "r".C),
	Mod("r".A / -6, "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A, "r".B + "r".C),
	Mod("r".A + -6, "r".C),
	Mod("r".A, -"r".B),
	Mod("r".A - "r".B, "r".C),
	Mod("r".A + "r".B, "r".C),
	Mod("r".A / -"r".B, "r".C),
	Mod(Mod("r".A, -"r".B), "r".C),
	Mod(BitOr("r".A, -"r".B), "r".C),
	Mod(BitXor("r".A, -"r".B), "r".C),
	Mod("r".A, BITNOT("r".B)),
	Mod("r".A + BITNOT("r".B), "r".C),
	Mod("r".A - BITNOT("r".B), "r".C),
	Mod("r".A * BITNOT("r".B), "r".C),
	Mod(Mod("r".A, BITNOT("r".B)), "r".C),
	Mod(BitAnd("r".A, BITNOT("r".B)), "r".C),
	Mod(BitOr("r".A, BITNOT("r".B)), "r".C),
	Mod(BitXor("r".A, BITNOT("r".B)), "r".C),
	Mod("r".A, -5),
	Mod(-5, "r".C),
	Mod("r".A + -5, "r".C),
	Mod("r".A - -5, "r".C),
	Mod("r".A * -5, "r".C),
	Mod(Mod("r".A, -5), "r".C),
	Mod(BitAnd("r".A, -5), "r".C),
	Mod(BitOr("r".A, -5), "r".C),
	Mod(BitXor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	Mod("r".A, -5),
	Mod(-5, "r".C),
	Mod("r".A + -5, "r".C),
	Mod("r".A - -5, "r".C),
	Mod("r".A * -5, "r".C),
	Mod(Mod("r".A, -5), "r".C),
	Mod(BitAnd("r".A, -5), "r".C),
	Mod(BitOr("r".A, -5), "r".C),
	Mod(BitXor("r".A, -5), "r".C)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

