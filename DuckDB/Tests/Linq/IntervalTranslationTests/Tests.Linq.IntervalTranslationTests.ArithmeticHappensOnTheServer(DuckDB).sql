-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 183845
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 1838450000000
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 1838450000000
DECLARE $UndeclaredSeconds BIGINT -- Int64
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
	CAST(r.InSeconds AS DOUBLE) / 3600,
	CAST((r.InSeconds // 3600) % 24 AS INTEGER),
	CAST(r.InTicks AS DOUBLE) / 600000000
FROM
	DurationRow r
LIMIT 2

