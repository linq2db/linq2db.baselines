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
SELECT
	DATE("r"."Value")
FROM
	"CoarseDateShapesRow" "r"
UNION ALL
SELECT
	CAST(CAST('2026-06-01-00.00.00.000000' AS TIMESTAMP(6)) AS timestamp)
FROM
	"CoarseDateShapesRow" "r_1"

