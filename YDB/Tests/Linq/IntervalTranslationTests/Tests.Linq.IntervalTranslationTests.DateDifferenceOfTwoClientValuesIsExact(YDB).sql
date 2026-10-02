-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp -- DateTime2
SET     $StartedOn = Timestamp('2026-01-03T13:30:00.000000Z')
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-03T14:30:00.000000Z')

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
SET     $Ticks = 1234l
DECLARE $TotalMilliseconds Double
SET     $TotalMilliseconds = Double('0.1234')

SELECT
	$Ticks + r.Id as Ticks,
	$TotalMilliseconds + r.Id as Milliseconds
FROM
	EventRow r
LIMIT 2

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	EventRow r

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	EventRow r

-- YDB Ydb
DECLARE $FinishedOn Timestamp -- DateTime2
SET     $FinishedOn = Timestamp('2026-01-03T13:30:00.000246Z')

SELECT
	r.Id as Id
FROM
	EventRow r
WHERE
	r.FinishedOn > $FinishedOn

