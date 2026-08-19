-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:20:30.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 10:20:30.1234567'

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
	"r"."FinishedOn"
FROM
	"EventRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10000, 1000) AS Integer),
	CAST(MOD(Nano100_Between("r"."StartedOn", "r"."FinishedOn") / 10000000, 60) AS Integer)
FROM
	"EventRow" "r"
LIMIT 2

