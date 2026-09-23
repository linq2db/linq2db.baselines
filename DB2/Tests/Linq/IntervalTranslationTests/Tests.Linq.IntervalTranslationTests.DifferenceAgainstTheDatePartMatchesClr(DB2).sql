-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-06-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-06-01-15.00.00.000000'

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
	CAST((CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days(DATE("r"."FinishedOn")) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds(DATE("r"."FinishedOn")) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond(DATE("r"."FinishedOn")) AS BigInt)) * 10 AS Float) / 36000000000
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

