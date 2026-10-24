-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2045-06-05 04:03:02.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '1970-01-02 00:00:00.0000000'

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
	Nano100_Between("r"."StartedOn", "r"."FinishedOn"),
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 864000000000
FROM
	"EventRow" "r"
LIMIT 2

