-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 5400l
DECLARE $InTicks Int64
SET     $InTicks = 54000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 54000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 5400l

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') AS Timestamp)) + DateTime::IntervalFromMicroseconds((r.InSeconds * 10000000l) / 10l) AS Timestamp)) as AddedSeconds,
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') AS Timestamp)) + DateTime::IntervalFromMicroseconds(((r.InSeconds * 10000000l) * -1l) / 10l) AS Timestamp)) as SubtractedSeconds,
	Unwrap(CAST(Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') AS Timestamp)) + DateTime::IntervalFromMicroseconds(r.InTicks / 10l) AS Timestamp)) as AddedTicks
FROM
	DurationRow r
LIMIT 2

