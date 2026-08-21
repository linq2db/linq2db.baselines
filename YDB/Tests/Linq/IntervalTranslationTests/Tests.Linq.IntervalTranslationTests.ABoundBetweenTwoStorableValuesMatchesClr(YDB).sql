-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 1l
DECLARE $InTicks Int64
SET     $InTicks = 10000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 10000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 1l

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
SET     $InSeconds = 2l
DECLARE $InTicks Int64
SET     $InTicks = 20000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 20000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 2l

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
SET     $InSeconds = 3l
DECLARE $InTicks Int64
SET     $InTicks = 30000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 30000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 3l

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
SET     $p = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l
DECLARE $p_1 Int64
SET     $p_1 = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p AND r.InSeconds <= $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 15000000l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds * 10000000l <> $Ticks
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l
DECLARE $p_1 Int64
SET     $p_1 = 1l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p AND r.InSeconds <= $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 1l
DECLARE $InTicks Int64
SET     $InTicks = 10000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 10000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 1l

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
SET     $InSeconds = 2l
DECLARE $InTicks Int64
SET     $InTicks = 20000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 20000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 2l

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
SET     $InSeconds = 3l
DECLARE $InTicks Int64
SET     $InTicks = 30000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 30000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 3l

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
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds < $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l
DECLARE $p_1 Int64
SET     $p_1 = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p AND r.InSeconds <= $p_1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $Ticks Int64
SET     $Ticks = 20000000l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds * 10000000l <> $Ticks
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds <= $p
ORDER BY
	r.Id

-- YDB Ydb
DECLARE $p Int64
SET     $p = 2l
DECLARE $p_1 Int64
SET     $p_1 = 2l

SELECT
	r.Id as Id
FROM
	DurationRow r
WHERE
	r.InSeconds >= $p AND r.InSeconds <= $p_1
ORDER BY
	r.Id

