-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '2026-01-01 11:00:00.000000'::TIMESTAMP
DECLARE $Budget BIGINT -- Int64
SET     $Budget = 5400

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
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $StartedOn TIMESTAMP -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn TIMESTAMP -- DateTime2
SET     $FinishedOn = '2026-01-01 11:00:00.000000'::TIMESTAMP
DECLARE $Budget BIGINT -- Int64
SET     $Budget = 5400

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
	r.Id,
	r.Budget,
	Date_Diff('microsecond', r.StartedOn, r.FinishedOn) * 10
FROM
	BudgetedTaskRow r
ORDER BY
	r.Id

