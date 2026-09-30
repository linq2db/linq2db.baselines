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
DECLARE $extra Int64
SET     $extra = 300l
DECLARE $Ticks Int64
SET     $Ticks = 3000000000l

SELECT
	r.Budget + $extra as ColumnPlusValue,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l + $Ticks AS Int64)) as DifferencePlusValue,
	Unwrap(CAST($Ticks + Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l AS Int64)) as ValuePlusDifference,
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l - $Ticks AS Int64)) as DifferenceLessValue
FROM
	BudgetedTaskRow r
LIMIT 2

