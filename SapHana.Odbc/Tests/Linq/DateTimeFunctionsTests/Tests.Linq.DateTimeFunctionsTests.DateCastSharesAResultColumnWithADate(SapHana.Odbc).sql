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
	CAST("r"."Value" AS Date)
FROM
	"CoarseDateShapesRow" "r"
UNION ALL
SELECT
	"r_1"."Day"
FROM
	"CoarseDateShapesRow" "r_1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN "r"."Id" > 0 THEN To_Date("r"."Value")
		ELSE CAST("r"."Value" AS Date)
	END
FROM
	"CoarseDateShapesRow" "r"

