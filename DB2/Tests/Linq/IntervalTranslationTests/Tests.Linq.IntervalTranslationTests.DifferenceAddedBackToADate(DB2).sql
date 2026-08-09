-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-01-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-01-03-13.30.00.000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."FinishedOn",
	"r"."StartedOn",
	Extract(hour from "r"."FinishedOn")
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

