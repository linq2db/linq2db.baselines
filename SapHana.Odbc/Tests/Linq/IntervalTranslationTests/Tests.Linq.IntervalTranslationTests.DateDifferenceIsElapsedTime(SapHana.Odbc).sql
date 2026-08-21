-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:59:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:01:00.0000000'

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
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 600000000,
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 600000000, 60) AS Integer)
FROM
	"EventRow" "r"
LIMIT 2

