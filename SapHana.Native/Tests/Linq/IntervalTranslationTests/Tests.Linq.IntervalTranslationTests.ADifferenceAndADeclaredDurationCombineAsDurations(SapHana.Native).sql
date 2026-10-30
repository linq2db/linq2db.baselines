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
SELECT
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") + CAST("r"."Budget" + "r"."Budget" AS BigInt) * 10000000 AS BigInt),
	CAST(CAST("r"."Budget" + "r"."Budget" AS BigInt) * 10000000 - Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS BigInt),
	Nano100_Between("r"."StartedOn", "r"."FinishedOn") + Nano100_Between("r"."StartedOn", "r"."FinishedOn"),
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") - "r"."Budget" * 10000000 AS BigInt)
FROM
	"BudgetedTaskRow" "r"
LIMIT 2

