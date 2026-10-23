-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Day Date
SET     $Day = Timestamp('2026-03-01T00:00:00.000000Z')
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T15:30:00.250000Z')

INSERT INTO DatedEventRow
(
	Id,
	`Day`,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$Day,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.`Day` AS Timestamp)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) as c1
FROM
	DatedEventRow r
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	DatedEventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.`Day` AS Timestamp)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp)) > r.`Day`

