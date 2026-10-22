-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	CAST(CAST(Floor("r".F) AS Int) AS DOUBLE PRECISION)
FROM
	"DoubleValue" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".F
FROM
	"DoubleValue" "t1"

