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
	MAX("g_1"."Day")
FROM
	"CoarseDateShapesRow" "g_1"
GROUP BY
	"g_1"."Id"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.0000000' AS Timestamp)
FROM
	"CoarseDateShapesRow" "r"

-- SapHana.Odbc SapHanaOdbc
SELECT
	MAX("g_1"."Value")
FROM
	"CoarseDateShapesRow" "g_1"
GROUP BY
	"g_1"."Id"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.5000000' AS Timestamp)
FROM
	"CoarseDateShapesRow" "r"

