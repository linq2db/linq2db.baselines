-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-12 10:00:00.0000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-12 00:00:00.0000000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."OpenedOn",
	"r"."ClosedOn"
FROM
	"CoarseEventRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("r"."OpenedOn", "r"."ClosedOn")
FROM
	"CoarseEventRow" "r"
LIMIT 2

