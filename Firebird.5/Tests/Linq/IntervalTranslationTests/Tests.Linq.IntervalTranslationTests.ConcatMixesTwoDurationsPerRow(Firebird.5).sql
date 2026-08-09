-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Source",
	"t1"."First_1",
	"t1"."Second_1",
	"t1"."First_2",
	"t1"."Second_2"
FROM
	(
		SELECT
			CAST(1 AS Int) as "Source",
			"r"."Budget" as "First_1",
			CAST(DateDiff(millisecond, "r"."StartedOn", "r"."FinishedOn") * 10000 AS BigInt) as "Second_1",
			NULL as "First_2",
			NULL as "Second_2"
		FROM
			"BudgetedTaskRow" "r"
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Source",
			NULL as "First_1",
			NULL as "Second_1",
			CAST(DateDiff(millisecond, "r_1"."StartedOn", "r_1"."FinishedOn") * 10000 AS BigInt) as "First_2",
			"r_1"."Budget" as "Second_2"
		FROM
			"BudgetedTaskRow" "r_1"
	) "t1"
ORDER BY
	"t1"."Source"

