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
SELECT
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l + Unwrap(CAST(r.Budget + r.Budget AS Int64)) * 10000000l AS Int64)) as DiffPlusBudgets,
	Unwrap(CAST(Unwrap(CAST(r.Budget + r.Budget AS Int64)) * 10000000l - Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Int64)) as BudgetsMinusDiff,
	Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l + Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as DiffPlusDiff,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l - r.Budget * 10000000l AS Int64)) as DiffMinusBudget
FROM
	BudgetedTaskRow r
LIMIT 2

