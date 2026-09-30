-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @extra BigInt -- Int64
SET     @extra = 300
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000

SELECT
	"r"."Budget" + CAST(@extra AS BigInt),
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) + CAST(@Ticks AS BigInt) AS BigInt),
	CAST(CAST(@Ticks AS BigInt) + CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) AS BigInt),
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10) AS BigInt) * 1000 AS BigInt) - CAST(@Ticks AS BigInt) AS BigInt)
FROM
	"BudgetedTaskRow" "r"
FETCH NEXT 2 ROWS ONLY

