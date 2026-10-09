-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $On Timestamp64 -- Object
SET     $On = Timestamp('1960-03-01T08:00:00.000000Z')
DECLARE $Day32 Date32 -- Object
SET     $Day32 = Timestamp('1960-03-01T00:00:00.000000Z')
DECLARE $On64 Datetime64 -- Object
SET     $On64 = Timestamp('1960-03-01T08:00:00.000000Z')
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T15:30:00.250000Z')

INSERT INTO WideTimestampDeclaredRow
(
	Id,
	`On`,
	Day32,
	On64,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$On,
	$Day32,
	$On64,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.`On` AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as On_1,
	Unwrap(CAST(Unwrap(CAST(r.Day32 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as Day32,
	Unwrap(CAST(Unwrap(CAST(r.On64 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as On64
FROM
	WideTimestampDeclaredRow r
LIMIT 2

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.Day32 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as Day32,
	Unwrap(CAST(Unwrap(CAST(r.On64 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as On64
FROM
	WideTimestampDeclaredRow r
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	WideTimestampDeclaredRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.`On` AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) > r.`On`

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	WideTimestampDeclaredRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.Day32 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) > r.Day32

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	WideTimestampDeclaredRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.On64 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) > r.On64 + DateTime::IntervalFromHours(Unwrap(CAST(Double('5') AS Int32))) + DateTime::IntervalFromMinutes(Unwrap(CAST(Double('30') AS Int32)))

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 198002500000l

SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.`On` AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as On_1,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.Day32 AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) AS Timestamp64)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp64)) as Day32,
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.On64 AS Timestamp64)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp64)) AS Timestamp64)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l) / 10l) AS Timestamp64)) as On64
FROM
	WideTimestampDeclaredRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 198002500000l

SELECT
	r.Id as Id
FROM
	WideTimestampDeclaredRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(r.Day32 AS Timestamp64)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp64)) AS Timestamp64)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp64)) > r.`On` + DateTime::IntervalFromHours(Unwrap(CAST(Double('3') AS Int32)))

