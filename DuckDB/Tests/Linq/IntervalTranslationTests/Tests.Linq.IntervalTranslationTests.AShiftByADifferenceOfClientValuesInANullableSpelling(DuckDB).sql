-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $DueOn  -- DateTime2
SET     $DueOn = '2026-01-01 10:00:00.000000'::TIMESTAMP
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP

INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	$Id,
	$DueOn,
	$StartedOn
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $DueOn  -- DateTime2
SET     $DueOn = NULL
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP

INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	$Id,
	$DueOn,
	$StartedOn
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $DueOn  -- DateTime2
SET     $DueOn = '2026-01-01 12:00:00.000000'::TIMESTAMP
DECLARE $StartedOn  -- DateTime2
SET     $StartedOn = '2026-01-01 10:00:00.000000'::TIMESTAMP

INSERT INTO OptionalDueRow
(
	Id,
	DueOn,
	StartedOn
)
VALUES
(
	$Id,
	$DueOn,
	$StartedOn
)

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.DueOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.DueOn AS TIMESTAMP_NS) - To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST(NULL AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.DueOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
ORDER BY
	r.Id

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	CAST(r.DueOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10) > r.StartedOn + 1 * Interval '1 Hour'
ORDER BY
	r.Id

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	r.Id
FROM
	OptionalDueRow r
WHERE
	r.Id = 1 AND CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10) < r.StartedOn + 1 * Interval '1 Hour'

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 36002500000

SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST(NULL AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
DECLARE $Ticks  -- Int64
SET     $Ticks = 72002500000

SELECT
	CAST(r.StartedOn AS TIMESTAMP_NS) + To_Microseconds(CAST($Ticks AS BIGINT) // 10)
FROM
	OptionalDueRow r
WHERE
	r.Id = 1
LIMIT 2

-- DuckDB
SELECT
	CAST(r.DueOn AS TIMESTAMP_NS) + To_Microseconds((Date_Diff('microsecond', r.StartedOn, r.DueOn) * 10) // 10)
FROM
	OptionalDueRow r
ORDER BY
	r.Id

