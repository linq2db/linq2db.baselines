-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $InSeconds BIGINT -- Int64
SET     $InSeconds = 1
DECLARE $InTicks BIGINT -- Int64
SET     $InTicks = 12345670
DECLARE $Undeclared BIGINT -- Int64
SET     $Undeclared = 12345670
DECLARE $UndeclaredSeconds BIGINT -- Int64
SET     $UndeclaredSeconds = 1

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
	CAST((r.InTicks // 10000) % 1000 AS INTEGER),
	CAST((r.InTicks // 10) % 1000 AS INTEGER)
FROM
	DurationRow r
LIMIT 2

