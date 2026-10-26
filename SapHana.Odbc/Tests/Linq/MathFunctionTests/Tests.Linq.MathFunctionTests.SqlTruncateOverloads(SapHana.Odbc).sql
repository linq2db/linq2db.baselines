-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	Round("r"."D", 0, ROUND_DOWN),
	Round("r"."F", 0, ROUND_DOWN),
	Round("r"."N", 0, ROUND_DOWN),
	Round("r"."G", 0, ROUND_DOWN),
	Round("r"."D", 0, ROUND_DOWN),
	Round("r"."F", 0, ROUND_DOWN)
FROM
	"TruncateValues" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."D",
	"t1"."F",
	"t1"."N",
	"t1"."G"
FROM
	"TruncateValues" "t1"

