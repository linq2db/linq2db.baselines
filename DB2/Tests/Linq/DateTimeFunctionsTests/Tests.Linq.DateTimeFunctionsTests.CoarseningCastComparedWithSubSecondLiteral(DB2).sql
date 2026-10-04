-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Timestamp(20) -- DateTime
SET     @Value = '2026-06-01-10.00.00.000000'
DECLARE @Day Date(20)
SET     @Day = '2026-06-01-00.00.00.000000'
DECLARE @Wide Timestamp(20) -- DateTime
SET     @Wide = '2026-06-01-10.00.00.250000'

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
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Wide" AS timestamp) < '2026-06-01-10.00.00.500000'

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Wide" AS timestamp) >= '2026-06-01-10.00.00.500000'

-- DB2 DB2.LUW DB2LUW
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" "r"
WHERE
	CAST("r"."Wide" AS timestamp) = '2026-06-01-10.00.00.500000'

