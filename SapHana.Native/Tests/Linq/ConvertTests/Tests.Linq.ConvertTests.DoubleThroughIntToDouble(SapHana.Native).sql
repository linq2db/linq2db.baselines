-- SapHana.Native SapHana
SELECT
	"r"."Id",
	CAST(CAST("r"."F" AS Integer) AS Double)
FROM
	"DoubleValue" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."F"
FROM
	"DoubleValue" "t1"

