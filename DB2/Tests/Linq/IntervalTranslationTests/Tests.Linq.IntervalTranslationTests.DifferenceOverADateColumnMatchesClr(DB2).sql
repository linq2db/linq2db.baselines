-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-06-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-06-12-10.00.00.000000'
DECLARE @OpenedOn Date(20)
SET     @OpenedOn = '2026-06-01-00.00.00.000000'
DECLARE @ClosedOn Date(20)
SET     @ClosedOn = '2026-06-12-00.00.00.000000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."OpenedOn",
	"r"."ClosedOn"
FROM
	"CoarseEventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	(CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10
FROM
	"CoarseEventRow" "r"
FETCH NEXT 2 ROWS ONLY

