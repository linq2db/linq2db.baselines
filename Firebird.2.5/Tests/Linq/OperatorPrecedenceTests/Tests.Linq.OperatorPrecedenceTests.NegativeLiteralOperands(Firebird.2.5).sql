-- Firebird.2.5 Firebird
SELECT
	CAST("r".A AS Decimal(18, 10)) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.2.5 Firebird
SELECT
	-(-5.5) * "r".B
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.2.5 Firebird
SELECT
	CAST("r".A AS DOUBLE PRECISION) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

-- Firebird.2.5 Firebird
SELECT
	CAST("r".A AS DOUBLE PRECISION) * 9.9999999999999995E-08
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1".N,
	"t1".S
FROM
	"PrecedenceRow" "t1"

