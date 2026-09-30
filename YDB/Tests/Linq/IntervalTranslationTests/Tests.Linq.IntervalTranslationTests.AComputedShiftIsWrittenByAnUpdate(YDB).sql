-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T15:30:00.250000Z')
DECLARE $Due Timestamp -- DateTime2
SET     $Due = Timestamp('2026-01-01T10:00:00.000000Z')

INSERT INTO ShiftTargetRow
(
	Id,
	StartedOn,
	FinishedOn,
	Due
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn,
	$Due
)

-- YDB Ydb
UPDATE
	ShiftTargetRow
SET
	Due = Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') + DateTime::IntervalFromMicroseconds((Unwrap(CAST(ShiftTargetRow.FinishedOn - ShiftTargetRow.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp))
WHERE
	ShiftTargetRow.Id = 1

-- YDB Ydb
SELECT
	r.Due as Due
FROM
	ShiftTargetRow r
LIMIT 2

