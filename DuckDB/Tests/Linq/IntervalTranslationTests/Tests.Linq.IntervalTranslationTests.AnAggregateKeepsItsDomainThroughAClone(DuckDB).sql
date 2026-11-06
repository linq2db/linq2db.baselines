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
SELECT
	(
		SELECT
			MIN(t1.InSeconds)
		FROM
			DurationRow t1
	),
	(
		SELECT
			MAX(t2.InSeconds)
		FROM
			DurationRow t2
	)
FROM
	DurationRow r
LIMIT 1

-- DuckDB
SELECT
	(
		SELECT
			MIN(t1.InSeconds)
		FROM
			DurationRow t1
	),
	(
		SELECT
			MAX(t2.InSeconds)
		FROM
			DurationRow t2
	)
FROM
	DurationRow r
LIMIT 1

-- DuckDB
DECLARE $p BIGINT -- Int64
SET     $p = 60

SELECT
	(
		SELECT
			MIN(t1.InSeconds)
		FROM
			DurationRow t1
	)
FROM
	DurationRow r
WHERE
	r.InSeconds > $p
LIMIT 1

