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
DECLARE $extra  -- Int64
SET     $extra = 300
DECLARE $Ticks  -- Int64
SET     $Ticks = 3000000000

SELECT
	r.Budget + $extra,
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 + $Ticks AS BIGINT),
	CAST($Ticks + Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 AS BIGINT),
	CAST(Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10 - $Ticks AS BIGINT)
FROM
	BudgetedTaskRow r
LIMIT 2

