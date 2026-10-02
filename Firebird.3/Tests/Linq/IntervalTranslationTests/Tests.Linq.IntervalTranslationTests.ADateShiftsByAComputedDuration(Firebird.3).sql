-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000'
DECLARE @Budget BigInt -- Int64
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

-- Firebird.3 Firebird3
SELECT
	"r"."StartedOn"
FROM
	"BudgetedTaskRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	DateAdd(millisecond, CAST(Mod(CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) + "r"."Budget" * 10000000 AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) + "r"."Budget" * 10000000 AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp))),
	DateAdd(millisecond, CAST(Mod(CAST(CAST("r"."Budget" + "r"."Budget" AS BigInt) * 10000000 - CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS BigInt), 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, CAST(CAST("r"."Budget" + "r"."Budget" AS BigInt) * 10000000 - CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS BigInt) / 864000000000, CAST("r"."StartedOn" AS TimeStamp))),
	DateAdd(millisecond, CAST(Mod(CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) + "r"."Budget" * 10000000 AS BigInt) * -1, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, (CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) + "r"."Budget" * 10000000 AS BigInt) * -1) / 864000000000, CAST("r"."StartedOn" AS TimeStamp)))
FROM
	"BudgetedTaskRow" "r"
FETCH NEXT 2 ROWS ONLY

