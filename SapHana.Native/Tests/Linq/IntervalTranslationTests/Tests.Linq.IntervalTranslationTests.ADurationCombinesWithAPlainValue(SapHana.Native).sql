-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'
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
	:"Id",
	:"StartedOn",
	:"FinishedOn",
	:"Budget"
)

-- SapHana.Native SapHana
DECLARE @extra BigInt -- Int64
SET     @extra = 300
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000
DECLARE @Ticks_1 BigInt -- Int64
SET     @Ticks_1 = 3000000000
DECLARE @Ticks_2 BigInt -- Int64
SET     @Ticks_2 = 3000000000

SELECT
	"r"."Budget" + :"extra",
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") + :"Ticks" AS BigInt),
	CAST(:"Ticks_1" + Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS BigInt),
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") - :"Ticks_2" AS BigInt)
FROM
	"BudgetedTaskRow" "r"
LIMIT 2

