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
	r.StartedOn
FROM
	BudgetedTaskRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 + r.Budget * 10000000 AS BIGINT) // 10),
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST(CAST(r.Budget + r.Budget AS BIGINT) * 10000000 - Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS BIGINT) // 10),
	CAST(r.StartedOn AS TIMESTAMP_NS) - To_Microseconds(CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 + r.Budget * 10000000 AS BIGINT) // 10)
FROM
	BudgetedTaskRow r
LIMIT 2

