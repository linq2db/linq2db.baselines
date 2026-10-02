-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $On Timestamp64 -- Object
SET     $On = Timestamp('1960-03-01T08:00:00.000000Z')
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T15:30:00.250000Z')

INSERT INTO WideTimestampDeclaredRow
(
	Id,
	`On`,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$On,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(r.`On` + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as c1
FROM
	WideTimestampDeclaredRow r
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	WideTimestampDeclaredRow r
WHERE
	Unwrap(CAST(r.`On` + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) > r.`On`

