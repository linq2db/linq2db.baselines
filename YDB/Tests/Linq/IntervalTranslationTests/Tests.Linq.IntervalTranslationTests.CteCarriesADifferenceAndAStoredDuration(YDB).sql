-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T11:00:00.000000Z')
DECLARE $Budget Int64
SET     $Budget = 10800l

INSERT INTO BudgetedTaskRow
(
	Id,
	StartedOn,
	FinishedOn,
	Budget
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn,
	$Budget
)

-- YDB Ydb
$CTE_1 = 	SELECT
		r.Id as Id,
		Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as Taken,
		r.Budget as Budget
	FROM
		BudgetedTaskRow r
;

SELECT
	t1.Id as Id,
	t1.Taken as Taken,
	t1.Budget as Budget
FROM
	$CTE_1 t1
ORDER BY
	t1.Id
LIMIT 2

