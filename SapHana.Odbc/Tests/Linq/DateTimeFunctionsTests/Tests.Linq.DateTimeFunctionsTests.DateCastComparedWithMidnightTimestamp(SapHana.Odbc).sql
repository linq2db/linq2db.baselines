-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @Wide DateTime
SET     @Wide = TIMESTAMP '2026-06-01 10:00:00.0000000'

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Value" AS Date) = TIMESTAMP '2026-06-01 00:00:00.0000000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Value" AS Date) < TIMESTAMP '2026-06-01 00:00:00.0000000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	TIMESTAMP '2026-06-01 00:00:00.0000000' = CAST("r"."Value" AS Date)

