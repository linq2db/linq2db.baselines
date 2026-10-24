-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Timestamp(20) -- DateTime
SET     @Value = CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6))
DECLARE @Day Date(20)
SET     @Day = CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6))
DECLARE @Wide Timestamp(20) -- DateTime
SET     @Wide = CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6))

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- DB2 DB2.LUW DB2LUW
WITH CTE_1 ("Day_1")
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
	CTE_1 "t1"
WHERE
	"t1"."Day_1" < CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6))

-- DB2 DB2.LUW DB2LUW
WITH CTE_1 ("Day_1", "Value_1")
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
	CTE_1 "t1"
WHERE
	"t1"."Value_1" < CAST('2026-06-01-10.00.00.500000' AS TIMESTAMP(6))

-- DB2 DB2.LUW DB2LUW
WITH CTE_1 ("Day_1", "Value_1")
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
	CTE_1 "t1"
WHERE
	"t1"."Value_1" = CAST('2026-06-01-10.00.00.500000' AS TIMESTAMP(6))

