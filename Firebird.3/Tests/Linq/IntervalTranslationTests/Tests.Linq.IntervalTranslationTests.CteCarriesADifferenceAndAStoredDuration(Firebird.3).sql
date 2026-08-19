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
WITH CTE_1 ("Id", "Taken", "Budget")
AS
(
	SELECT
		"r"."Id",
		CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt),
		"r"."Budget"
	FROM
		"BudgetedTaskRow" "r"
)
SELECT
	"t1"."Id",
	"t1"."Taken",
	"t1"."Budget"
FROM
	CTE_1 "t1"
ORDER BY
	"t1"."Id"
FETCH NEXT 2 ROWS ONLY

