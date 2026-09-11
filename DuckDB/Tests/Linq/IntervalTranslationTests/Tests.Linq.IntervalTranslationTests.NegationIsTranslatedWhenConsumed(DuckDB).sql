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
	CAST(CAST(-r.InSeconds AS BIGINT) AS DOUBLE) / 3600,
	CAST((CAST(-r.InSeconds AS BIGINT) // 3600) % 24 AS INTEGER)
FROM
	DurationRow r
LIMIT 2

