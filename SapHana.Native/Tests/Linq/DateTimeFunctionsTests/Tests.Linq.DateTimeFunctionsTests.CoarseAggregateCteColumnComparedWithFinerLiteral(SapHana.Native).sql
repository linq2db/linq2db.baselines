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
WITH "CTE_1" ("Day_1")
AS
(
	SELECT
		MAX("g_1"."Day")
	FROM
		"CoarseDateShapesRow" "g_1"
	GROUP BY
		"g_1"."Id"
)
SELECT
	COUNT(*)
FROM
	"CTE_1" "t1"
WHERE
	"t1"."Day_1" < TIMESTAMP '2026-06-01 10:00:00.0000000'

-- SapHana.Native SapHana
WITH "CTE_1" ("Day_1", "Value_1")
AS
(
	SELECT
		MAX("g_1"."Day"),
		MAX("g_1"."Value")
	FROM
		"CoarseDateShapesRow" "g_1"
	GROUP BY
		"g_1"."Id"
)
SELECT
	COUNT(*)
FROM
	"CTE_1" "t1"
WHERE
	"t1"."Value_1" < TIMESTAMP '2026-06-01 10:00:00.5000000'

-- SapHana.Native SapHana
WITH "CTE_1" ("Day_1", "Value_1")
AS
(
	SELECT
		MAX("g_1"."Day"),
		MAX("g_1"."Value")
	FROM
		"CoarseDateShapesRow" "g_1"
	GROUP BY
		"g_1"."Id"
)
SELECT
	COUNT(*)
FROM
	"CTE_1" "t1"
WHERE
	"t1"."Value_1" = TIMESTAMP '2026-06-01 10:00:00.5000000'

