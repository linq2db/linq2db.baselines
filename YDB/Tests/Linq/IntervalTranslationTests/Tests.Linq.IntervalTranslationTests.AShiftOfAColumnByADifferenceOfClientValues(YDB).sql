-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-01T12:00:00.000000Z')

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
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	Unwrap(CAST(Unwrap(CAST(r.StartedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp)) as c1
FROM
	EventRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST($Ticks AS Int64)) * -1l) / 10l) AS Timestamp)) as c1
FROM
	EventRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.StartedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp)) < r.FinishedOn

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.FinishedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds((Unwrap(CAST($Ticks AS Int64)) * -1l) / 10l) AS Timestamp)) > r.StartedOn + DateTime::IntervalFromHours(Unwrap(CAST(Double('1') AS Int32)))

