-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Datetime -- DateTime
SET     $StartedOn = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $FinishedOn Datetime -- DateTime
SET     $FinishedOn = Timestamp('2026-06-01T15:04:03.000000Z')
DECLARE $OpenedOn Date
SET     $OpenedOn = Timestamp('2026-06-01T00:00:00.000000Z')
DECLARE $ClosedOn Date
SET     $ClosedOn = Timestamp('2026-06-01T00:00:00.000000Z')

INSERT INTO CoarseEventRow
(
	Id,
	StartedOn,
	FinishedOn,
	OpenedOn,
	ClosedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn,
	$OpenedOn,
	$ClosedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as c1
FROM
	CoarseEventRow r
LIMIT 2

