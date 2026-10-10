-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T08:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T13:30:00.250000Z')

INSERT INTO ZonedEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(r.FinishedOn + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) as c1
FROM
	ZonedEventRow r
LIMIT 2

