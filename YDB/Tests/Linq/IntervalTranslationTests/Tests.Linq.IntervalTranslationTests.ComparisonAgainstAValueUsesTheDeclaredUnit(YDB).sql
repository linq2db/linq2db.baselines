-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 900l
DECLARE $InTicks Int64
SET     $InTicks = 9000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 9000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 900l

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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $InSeconds Int64
SET     $InSeconds = 1800l
DECLARE $InTicks Int64
SET     $InTicks = 18000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 18000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 1800l

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
DECLARE $Id Int32
SET     $Id = 3
DECLARE $InSeconds Int64
SET     $InSeconds = 2700l
DECLARE $InTicks Int64
SET     $InTicks = 27000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 27000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 2700l

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
DECLARE $p Int64
SET     $p = 1800l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p

-- YDB Ydb
DECLARE $p Int64
SET     $p = 1800l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 18000000000l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InTicks > $Ticks

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 18000000000l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InTicks = $Ticks

