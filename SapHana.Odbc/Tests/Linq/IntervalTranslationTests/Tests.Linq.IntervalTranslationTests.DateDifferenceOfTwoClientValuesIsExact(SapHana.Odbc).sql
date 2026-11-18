-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 13:30:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 14:30:00.0000000'

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
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT
	? + "r"."Id",
	? + CAST("r"."Id" AS Double)
FROM
	"EventRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- SapHana.Odbc SapHanaOdbc
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0002468'

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	"r"."FinishedOn" > ?

