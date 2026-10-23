-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T11:00:00.000000Z')
DECLARE $Budget Int64
SET     $Budget = 5400l

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
SET     $Budget = 5400l

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
SELECT
	r.Id as Id,
	r.Budget as Budget,
	Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as c1
FROM
	BudgetedTaskRow r
ORDER BY
	r.Id

