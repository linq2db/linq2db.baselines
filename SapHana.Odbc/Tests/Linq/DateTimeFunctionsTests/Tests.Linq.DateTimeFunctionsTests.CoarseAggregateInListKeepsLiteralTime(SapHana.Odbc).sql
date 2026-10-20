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
	(
		SELECT
			MAX("g_1"."Value") as "In_1"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."In_1" IN (TIMESTAMP '2026-06-01 10:00:00.5000000')

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX("g_1"."Value") as "Max_1"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "t1"
WHERE
	"t1"."Max_1" IN (TIMESTAMP '2026-06-01 10:00:00.5000000')

-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN TIMESTAMP '2026-06-01 10:00:00.5000000' IN (
			SELECT
				MAX("g_1"."Value")
			FROM
				"CoarseDateShapesRow" "g_1"
			GROUP BY
				"g_1"."Id"
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

