-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T10:00:00.001500Z')

INSERT INTO EventRow
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
	Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) as c1
FROM
	EventRow r
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) > Timestamp('2026-03-01T00:00:00.001000Z')

