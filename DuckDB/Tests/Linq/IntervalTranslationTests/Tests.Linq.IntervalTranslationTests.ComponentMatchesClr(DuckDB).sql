-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $InSeconds  -- Int64
SET     $InSeconds = 183845
DECLARE $InTicks  -- Int64
SET     $InTicks = 1838450000000
DECLARE $Undeclared  -- Int64
SET     $Undeclared = 1838450000000
DECLARE $UndeclaredSeconds  -- Int64
SET     $UndeclaredSeconds = 183845

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
	CAST((CAST(r.InSeconds AS BIGINT) * 10000000) // 864000000000 AS INTEGER),
	CAST(((CAST(r.InSeconds AS BIGINT) * 10000000) // 36000000000) % 24 AS INTEGER),
	CAST(((CAST(r.InSeconds AS BIGINT) * 10000000) // 600000000) % 60 AS INTEGER),
	CAST(((CAST(r.InSeconds AS BIGINT) * 10000000) // 10000000) % 60 AS INTEGER)
FROM
	DurationRow r
LIMIT 2

