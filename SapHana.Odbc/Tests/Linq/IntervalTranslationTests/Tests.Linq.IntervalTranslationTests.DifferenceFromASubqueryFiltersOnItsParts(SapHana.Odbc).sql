-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST(Nano100_Between("x"."StartedOn", "x"."FinishedOn") AS Double) / 36000000000 > 3

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST(MOD(Nano100_Between("x"."StartedOn", "x"."FinishedOn") / 36000000000, 24) AS Integer) = 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
ORDER BY
	Nano100_Between("x"."StartedOn", "x"."FinishedOn") DESC

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("x"."StartedOn", "x"."FinishedOn")
FROM
	"EventRow" "x"
ORDER BY
	"x"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	Nano100_Between("r"."StartedOn", "r"."FinishedOn")
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

