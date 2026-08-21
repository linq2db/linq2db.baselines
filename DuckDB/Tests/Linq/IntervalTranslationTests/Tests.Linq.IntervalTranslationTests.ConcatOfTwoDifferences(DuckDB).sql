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
SELECT
	t1.Source,
	t1.Duration
FROM
	(
		SELECT
			CAST(1 AS INTEGER) as Source,
			Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 as Duration
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			CAST(2 AS INTEGER) as Source,
			Date_Diff('microsecond', r_1.StartedOn, r_1.FinishedOn) * 10 as Duration
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

