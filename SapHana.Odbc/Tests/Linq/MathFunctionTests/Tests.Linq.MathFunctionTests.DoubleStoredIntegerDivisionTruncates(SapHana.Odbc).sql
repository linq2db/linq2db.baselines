-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST("t"."D" AS Integer) / 2 AS Integer)
FROM
	"DoubleStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."D"
FROM
	"DoubleStoredIntegerTable" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."Id"
FROM
	"DoubleStoredIntegerTable" "t"
WHERE
	CAST(CAST("t"."D" AS Integer) / 2 AS Integer) = -3
ORDER BY
	"t"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."D"
FROM
	"DoubleStoredIntegerTable" "t1"

