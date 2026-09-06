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
	"t1"."Id",
	"t1"."Taken"
FROM
	(
		SELECT
			Nano100_Between("r"."StartedOn", "r"."FinishedOn") as "Taken",
			CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS Double) / 36000000000 as "TotalHours",
			"r"."Id"
		FROM
			"EventRow" "r"
	) "t1"
WHERE
	"t1"."TotalHours" > 3
ORDER BY
	"t1"."Id"

