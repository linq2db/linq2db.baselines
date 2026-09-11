-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 13:00:00.000000'::TIMESTAMP
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
DECLARE $Id  -- Int32
SET     $Id = 2
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
SELECT
	(
		SELECT
			MIN(Date_Diff('microsecond', t2.StartedOn, t2.FinishedOn) * 10)
		FROM
			BudgetedTaskRow t2
	),
	(
		SELECT
			MAX(Date_Diff('microsecond', t3.StartedOn, t3.FinishedOn) * 10)
		FROM
			BudgetedTaskRow t3
	),
	Coalesce((
		SELECT
			SUM(CAST(Date_Diff('microsecond', t4.StartedOn, t4.FinishedOn) * 10 AS DOUBLE) / 600000000)
		FROM
			BudgetedTaskRow t4
	), 0)
FROM
	BudgetedTaskRow t1
LIMIT 1

