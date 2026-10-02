-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $DueOn Timestamp -- DateTime2
SET     $DueOn = Timestamp('2026-01-01T10:00:00.000000Z')
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-01T10:00:00.000000Z')

INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	$Id,
	$DueOn,
	$StartedOn
)

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	CAST(CAST(r.DueOn AS Timestamp) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp) as c1
FROM
	OptionalDueRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	Unwrap(CAST(Unwrap(CAST(r.StartedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp)) as c1
FROM
	OptionalDueRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	CAST(CAST(r.DueOn AS Timestamp) + DateTime::IntervalFromMicroseconds((Unwrap(CAST($Ticks AS Int64)) * -1l) / 10l) AS Timestamp) as c1
FROM
	OptionalDueRow r
LIMIT 2

-- YDB Ydb
SELECT
	CAST(Unwrap(CAST(r.StartedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds(CAST(NULL AS Int64) / 10l) AS Timestamp) as c1
FROM
	OptionalDueRow r
LIMIT 2

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	r.Id as Id
FROM
	OptionalDueRow r
WHERE
	CAST(CAST(r.DueOn AS Timestamp) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp) > r.StartedOn + DateTime::IntervalFromHours(Unwrap(CAST(Double('1') AS Int32)))

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 36002500000l

SELECT
	r.Id as Id
FROM
	OptionalDueRow r
WHERE
	Unwrap(CAST(Unwrap(CAST(r.StartedOn AS Timestamp)) + DateTime::IntervalFromMicroseconds(Unwrap(CAST($Ticks AS Int64)) / 10l) AS Timestamp)) < r.StartedOn + DateTime::IntervalFromHours(Unwrap(CAST(Double('1') AS Int32)))

