-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Datetime -- DateTime
SET     $StartedOn = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $FinishedOn Datetime -- DateTime
SET     $FinishedOn = Timestamp('2026-06-01T10:00:00.000000Z')
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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StartedOn Datetime -- DateTime
SET     $StartedOn = Timestamp('2026-05-25T10:00:00.000000Z')
DECLARE $FinishedOn Datetime -- DateTime
SET     $FinishedOn = Timestamp('2026-05-25T10:00:00.000000Z')
DECLARE $OpenedOn Date
SET     $OpenedOn = Timestamp('2026-05-25T00:00:00.000000Z')
DECLARE $ClosedOn Date
SET     $ClosedOn = Timestamp('2026-05-25T00:00:00.000000Z')

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
	CAST(CAST(CAST(MAX(grp.StartedOn) - MIN(grp.StartedOn) AS Int64) * 10l AS Double) / Double('864000000000') AS Int32) + 1 as dayCount
FROM
	CoarseEventRow grp
LIMIT 2

