-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2025-06-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2025-06-01 10:00:00.0000000'

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
	COUNT(*)
FROM
	"EventRow" "r"
WHERE
	CAST(Nano100_Between("r"."StartedOn", CURRENT_TIMESTAMP) AS Double) / 864000000000 > 1

