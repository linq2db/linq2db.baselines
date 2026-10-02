-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 864000000000 > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 36000000000 > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(Nano100_Between("r"."ClosedOnNullable", TIMESTAMP '2026-10-01 00:00:00.0000000') AS Double) / 864000000000 > 0

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(Nano100_Between("r"."OpenedOn", "r"."ClosedOnNullable") AS Double) / 36000000000
FROM
	"Issue5777Row" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

