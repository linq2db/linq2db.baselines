-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 11:00:00.000000'::TIMESTAMP
DECLARE $Budget  -- Int64
SET     $Budget = 10800

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

-- DuckDB
WITH CTE_1 (Id, Taken, Budget)
AS
(
	SELECT
		r.Id,
		Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10,
		r.Budget
	FROM
		BudgetedTaskRow r
)
SELECT
	t1.Id,
	t1.Taken,
	t1.Budget
FROM
	CTE_1 t1
ORDER BY
	t1.Id
LIMIT 2

