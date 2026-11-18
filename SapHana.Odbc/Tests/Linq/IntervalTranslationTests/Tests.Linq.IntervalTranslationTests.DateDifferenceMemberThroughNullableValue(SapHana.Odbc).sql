-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 864000000000 > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 36000000000 > 0

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.0000000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."ClosedOnNullable", ?) AS Double) / 864000000000 > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 36000000000
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") / 864000000000 AS Integer) > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(MOD(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") / 36000000000, 24) AS Integer) > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") / 864000000000 AS Integer),
	CAST(MOD(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") / 36000000000, 24) AS Integer)
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	"r"."Id"

