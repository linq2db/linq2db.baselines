-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-01-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-01-01-13.00.00.000000'
DECLARE @Budget BigInt(8) -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-01-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-01-01-11.00.00.000000'
DECLARE @Budget BigInt(8) -- Int64
SET     @Budget = 10800

INSERT INTO "BudgetedTaskRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Budget"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- DB2 DB2.LUW DB2LUW
SELECT
	(
		SELECT
			MIN((CAST(Days("t2"."FinishedOn") AS BigInt) - CAST(Days("t2"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("t2"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("t2"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("t2"."FinishedOn") AS BigInt) - CAST(Microsecond("t2"."StartedOn") AS BigInt)) * 10)
		FROM
			"BudgetedTaskRow" "t2"
	),
	(
		SELECT
			MAX((CAST(Days("t3"."FinishedOn") AS BigInt) - CAST(Days("t3"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("t3"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("t3"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("t3"."FinishedOn") AS BigInt) - CAST(Microsecond("t3"."StartedOn") AS BigInt)) * 10)
		FROM
			"BudgetedTaskRow" "t3"
	),
	Coalesce((
		SELECT
			SUM(CAST((CAST(Days("t4"."FinishedOn") AS BigInt) - CAST(Days("t4"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("t4"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("t4"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("t4"."FinishedOn") AS BigInt) - CAST(Microsecond("t4"."StartedOn") AS BigInt)) * 10 AS Float) / 600000000)
		FROM
			"BudgetedTaskRow" "t4"
	), 0)
FROM
	"BudgetedTaskRow" "t1"
FETCH NEXT 1 ROWS ONLY

