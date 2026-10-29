-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 900
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 9000000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 9000000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 900

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

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 1800
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 18000000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 18000000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 1800

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

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 3
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 2700
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 27000000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 27000000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 2700

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

-- DuckDB
DECLARE $p BIGINT -- Int64
SET     $p = 1800

SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- DuckDB
DECLARE $p BIGINT -- Int64
SET     $p = 1800

SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > 1800
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InTicks > 18000000000
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > 0
ORDER BY
	r.Id

-- DuckDB
DECLARE $p BIGINT -- Int64
SET     $p = 0

SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
ORDER BY
	r.Id

