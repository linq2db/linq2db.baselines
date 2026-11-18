-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."ClosedOn", ?) AS Double) / 864000000000 > 0

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between(?, "r"."ClosedOn") AS Double) / 36000000000 > 0

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	CAST(Nano100_Between("r"."ClosedOn", ?) AS Double) / 600000000

-- SapHana.Odbc SapHanaOdbc
DECLARE @asOf DateTime
SET     @asOf = TIMESTAMP '2026-01-10 08:15:30.0000000'

SELECT
	CAST(Nano100_Between(?, "r"."ClosedOn") AS Double) / 36000000000
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

