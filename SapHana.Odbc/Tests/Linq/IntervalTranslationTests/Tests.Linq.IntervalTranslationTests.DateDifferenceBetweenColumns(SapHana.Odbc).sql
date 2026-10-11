-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") AS Double) / 864000000000 < 12

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") AS Double) / 36000000000

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") AS Double) / 864000000000,
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") AS Double) / 36000000000,
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") AS Double) / 600000000,
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") / 864000000000 AS Integer),
	CAST(MOD(Nano100_Between("r"."OpenedOn", "r"."ClosedOn") / 36000000000, 24) AS Integer)
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

