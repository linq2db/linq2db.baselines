-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-06-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-06-01-10.00.00.000000'
DECLARE @OpenedOn Date(20)
SET     @OpenedOn = '2026-06-01-00.00.00.000000'
DECLARE @ClosedOn Date(20)
SET     @ClosedOn = '2026-06-01-00.00.00.000000'

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-05-25-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-05-25-10.00.00.000000'
DECLARE @OpenedOn Date(20)
SET     @OpenedOn = '2026-05-25-00.00.00.000000'
DECLARE @ClosedOn Date(20)
SET     @ClosedOn = '2026-05-25-00.00.00.000000'

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
	CAST(Floor(CAST((CAST(Days(MAX("grp"."StartedOn")) AS BigInt) - CAST(Days(MIN("grp"."StartedOn")) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(MAX("grp"."StartedOn")) AS BigInt) - CAST(Midnight_Seconds(MIN("grp"."StartedOn")) AS BigInt)) * 10000000 + (CAST(Microsecond(MAX("grp"."StartedOn")) AS BigInt) - CAST(Microsecond(MIN("grp"."StartedOn")) AS BigInt)) * 10 AS Float) / 864000000000) AS Int) + 1
FROM
	"CoarseEventRow" "grp"
FETCH NEXT 2 ROWS ONLY

