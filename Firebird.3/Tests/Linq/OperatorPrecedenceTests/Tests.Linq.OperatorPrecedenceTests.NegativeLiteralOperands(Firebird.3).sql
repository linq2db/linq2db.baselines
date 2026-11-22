-- Firebird.3 Firebird3
SELECT
	CAST("r".A AS Decimal(18, 10)) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.3 Firebird3
SELECT
	-(-5.5) * "r".B
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.3 Firebird3
SELECT
	CAST("r".A AS DOUBLE PRECISION) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.3 Firebird3
SELECT
	CAST("r".A AS DOUBLE PRECISION) * 9.9999999999999995E-08
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

