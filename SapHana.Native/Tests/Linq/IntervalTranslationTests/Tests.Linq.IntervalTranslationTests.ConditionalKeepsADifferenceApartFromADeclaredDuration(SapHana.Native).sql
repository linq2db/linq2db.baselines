-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 5400

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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.0000000'
DECLARE @Budget BigInt -- Int64
SET     @Budget = 5400

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
	"r"."Id",
	"r"."Budget",
	Nano100_Between("r"."StartedOn", "r"."FinishedOn")
FROM
	"BudgetedTaskRow" "r"
ORDER BY
	"r"."Id"

