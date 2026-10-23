-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-03 13:30:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-03 14:30:00.000000'::TIMESTAMP

INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn
)

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 1234
DECLARE $TotalMilliseconds  -- Double
SET     $TotalMilliseconds = 0.1234

SELECT
	$Ticks + r.Id,
	$TotalMilliseconds + CAST(r.Id AS DOUBLE)
FROM
	EventRow r
LIMIT 2

-- DuckDB
SELECT
	r.Id
FROM
	EventRow r

-- DuckDB
SELECT
	r.Id
FROM
	EventRow r

-- DuckDB
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-03 13:30:00.000246'::TIMESTAMP

SELECT
	r.Id
FROM
	EventRow r
WHERE
	r.FinishedOn > $FinishedOn

