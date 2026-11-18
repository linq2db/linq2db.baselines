-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
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
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @extra BigInt -- Int64
SET     @extra = 300
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000

SELECT
	"r"."Budget" + ?,
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") + ? AS BigInt),
	CAST(? + Nano100_Between("r"."StartedOn", "r"."FinishedOn") AS BigInt),
	CAST(Nano100_Between("r"."StartedOn", "r"."FinishedOn") - ? AS BigInt)
FROM
	"BudgetedTaskRow" "r"
LIMIT 2

