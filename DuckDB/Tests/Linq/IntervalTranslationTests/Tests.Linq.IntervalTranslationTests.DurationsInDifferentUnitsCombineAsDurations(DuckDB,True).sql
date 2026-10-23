-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $InSeconds  -- Int64
SET     $InSeconds = 5400
DECLARE $InTicks  -- Int64
SET     $InTicks = 54000000000
DECLARE $Undeclared  -- Int64
SET     $Undeclared = 54000000000
DECLARE $UndeclaredSeconds  -- Int64
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
SELECT
	r.InSeconds + r.InSeconds,
	r.InTicks + r.InTicks,
	CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT),
	CAST(r.InSeconds * 10000000 - r.InTicks AS BIGINT),
	CAST(r.InTicks - r.InSeconds * 10000000 AS BIGINT),
	CAST(CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) + r.InSeconds * 10000000 AS BIGINT),
	CAST(CAST(-r.InSeconds AS BIGINT) * 10000000 + r.InTicks AS BIGINT),
	CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT),
	CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT) + r.InTicks + r.InTicks,
	CAST(CAST(r.InSeconds + r.InSeconds AS BIGINT) * 10000000 + r.InTicks AS BIGINT) - (r.InTicks + r.InTicks),
	CAST(CAST(-r.InSeconds AS BIGINT) * 10000000 - r.InTicks AS BIGINT)
FROM
	DurationRow r
LIMIT 2

-- DuckDB
SELECT
	CAST(r.InSeconds * 10000000 + r.InTicks AS BIGINT)
FROM
	DurationRow r
LIMIT 2

