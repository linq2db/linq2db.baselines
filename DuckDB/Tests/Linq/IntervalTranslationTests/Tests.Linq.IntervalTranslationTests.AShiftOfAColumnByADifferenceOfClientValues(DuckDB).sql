-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $FinishedOn  -- DateTime2
SET     $FinishedOn = '2026-01-01 12:00:00.000000'::TIMESTAMP

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
SET     $Ticks = 36002500000

SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	EventRow r
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.FinishedOn AS TIMESTAMP_NS) - To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	EventRow r
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	r.Id
FROM
	EventRow r
WHERE
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10) < r.FinishedOn

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	r.Id
FROM
	EventRow r
WHERE
	CAST(r.FinishedOn AS TIMESTAMP_NS) - To_Microseconds(CAST($Ticks AS BIGINT) // 10) > r.StartedOn + 1 * Interval '1 Hour'

