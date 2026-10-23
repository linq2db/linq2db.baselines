-- Firebird.4 Firebird4
SELECT
	"r"."Id",
	CAST(CAST(Floor("r".F) AS Int) AS DOUBLE PRECISION)
FROM
	"DoubleValue" "r"
ORDER BY
	"r"."Id"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1".F
FROM
	"DoubleValue" "t1"

