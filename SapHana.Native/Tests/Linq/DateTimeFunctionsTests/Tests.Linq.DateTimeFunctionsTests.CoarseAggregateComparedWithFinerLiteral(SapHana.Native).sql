-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value TimeStamp -- DateTime
SET     @Value = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @Wide TimeStamp -- DateTime2
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
	:"Id",
	:"Value",
	:"Day",
	:"Wide"
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Day") < TIMESTAMP '2026-06-01 10:00:00.0000000'
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MIN("g_1"."Day") >= TIMESTAMP '2026-06-01 10:00:00.0000000'
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") < TIMESTAMP '2026-06-01 10:00:00.5000000'
	) "t1"

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	(
		SELECT
			"g_1"."Id"
		FROM
			"CoarseDateShapesRow" "g_1"
		GROUP BY
			"g_1"."Id"
		HAVING
			MAX("g_1"."Value") = TIMESTAMP '2026-06-01 10:00:00.5000000'
	) "t1"

