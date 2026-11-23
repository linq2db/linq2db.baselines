-- DB2 DB2.LUW DB2LUW
SELECT
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	"r".A / ("r".B * "r".C),
	"r".A / ("r".B * "r".C),
	"r".A / "r".B / "r".C,
	"r".A / ("r".B / "r".C),
	"r".A / "r".B / "r".C,
	"r".A / ("r".B / "r".C),
	"r".A / BitXor("r".B, "r".C),
	"r".A / BitXor("r".B, "r".C),
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + -6) / "r".C,
	("r".A - "r".B) / "r".C,
	"r".A / ("r".B - "r".C),
	("r".A - -6) / "r".C,
	("r".A * "r".B) / "r".C,
	"r".A / ("r".B * "r".C),
	("r".A * -6) / "r".C,
	("r".A / "r".B) / "r".C,
	"r".A / ("r".B / "r".C),
	("r".A / -6) / "r".C,
	("r".A + "r".B) / "r".C,
	"r".A / ("r".B + "r".C),
	("r".A + -6) / "r".C,
	"r".A / -"r".B,
	("r".A - "r".B) / "r".C,
	("r".A + "r".B) / "r".C,
	"r".A / -"r".B / "r".C,
	BitAnd("r".A, -"r".B) / "r".C,
	BitXor("r".A, -"r".B) / "r".C,
	"r".A * BITNOT("r".B) / "r".C,
	"r".A * -5 / "r".C,
	BitAnd("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r".A * -5 / "r".C,
	BitAnd("r".A, -5) / "r".C
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

