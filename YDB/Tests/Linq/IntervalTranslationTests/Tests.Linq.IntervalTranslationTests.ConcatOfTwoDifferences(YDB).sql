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
	t1.Source as Source,
	t1.Duration as Duration
FROM
	(
		SELECT
			Unwrap(CAST(1 AS Int32)) as Source,
			Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as Duration
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Source,
			Unwrap(CAST(r_1.FinishedOn - r_1.StartedOn AS Int64)) * 10l as Duration
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

