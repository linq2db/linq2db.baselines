-- DB2 DB2.LUW DB2LUW
SELECT
	BITNOT("r".A + "r".B),
	BITNOT("r".A + "r".B),
	BITNOT("r".A - "r".B),
	BITNOT("r".A - "r".B),
	BITNOT("r".A * "r".B),
	BITNOT("r".A * "r".B),
	BITNOT("r".A / "r".B),
	BITNOT("r".A / "r".B),
	BITNOT(BitAnd("r".A, "r".B)),
	BITNOT(BitAnd("r".A, "r".B)),
	BITNOT(BitOr("r".A, "r".B)),
	BITNOT(BitOr("r".A, "r".B)),
	BITNOT(-"r".B),
	BITNOT(BITNOT("r".B)),
	BITNOT(-5),
	BITNOT(-5 * "r".B)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	BITNOT(-5)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

