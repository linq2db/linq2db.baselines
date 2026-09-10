-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
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
WITH CTE_1 ("Id", "Taken", "Budget")
AS
(
	SELECT
		"r"."Id",
		(CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10,
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

