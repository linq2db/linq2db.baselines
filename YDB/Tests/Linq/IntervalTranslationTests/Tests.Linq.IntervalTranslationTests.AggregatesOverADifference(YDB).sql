-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T13:00:00.000000Z')
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
DECLARE $Id Int32
SET     $Id = 2
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
		MIN(Unwrap(CAST(t1.FinishedOn - t1.StartedOn AS Int64)) * 10l) as Min_1
	FROM
		BudgetedTaskRow t1
;
$CTE_2 = 	SELECT
		MAX(Unwrap(CAST(t2.FinishedOn - t2.StartedOn AS Int64)) * 10l) as Max_1
	FROM
		BudgetedTaskRow t2
;
$CTE_3 = 	SELECT
		SUM(Unwrap(CAST(Unwrap(CAST(t3.FinishedOn - t3.StartedOn AS Int64)) * 10l AS Double)) / Double('600000000')) as TotalMin
	FROM
		BudgetedTaskRow t3
;

SELECT
	$CTE_1 as Min_1,
	$CTE_2 as Max_1,
	Coalesce($CTE_3, Double('0')) as TotalMin
FROM
	BudgetedTaskRow t4
LIMIT 1

