-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 5400
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 54000000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 54000000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 5400

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
DECLARE $Ticks BIGINT -- Int64
SET     $Ticks = 3000000000

SELECT
	CAST(CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) + $Ticks AS BIGINT),
	CAST($Ticks + CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) AS BIGINT),
	CAST(CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) - $Ticks AS BIGINT)
FROM
	DurationRow r
LIMIT 2

-- DuckDB
DECLARE $Ticks BIGINT -- Int64
SET     $Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	DurationRow r
WHERE
	CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) = $Ticks

