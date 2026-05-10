-- DuckDB
DECLARE $ts  -- Object
SET     $ts = '01:01:00'::INTERVAL

SELECT
	t.Id,
	t.DateTimeOffset + CAST($ts AS INTERVAL),
	t.DateTimeOffsetNullable + CAST($ts AS INTERVAL),
	t.DateTimeOffset - CAST($ts AS INTERVAL),
	t.DateTimeOffsetNullable - CAST($ts AS INTERVAL),
	t.DateTimeOffset + CAST($ts AS INTERVAL),
	t.DateTimeOffsetNullable + CAST($ts AS INTERVAL)
FROM
	DateTypesOffset t
UNION ALL
SELECT
	t_1.Id,
	t_1.DateTimeOffset + CAST($ts AS INTERVAL),
	t_1.DateTimeOffsetNullable + CAST($ts AS INTERVAL),
	t_1.DateTimeOffset - CAST($ts AS INTERVAL),
	t_1.DateTimeOffsetNullable - CAST($ts AS INTERVAL),
	t_1.DateTimeOffset + CAST($ts AS INTERVAL),
	t_1.DateTimeOffsetNullable + CAST($ts AS INTERVAL)
FROM
	DateTypesOffset t_1

-- DuckDB

SELECT
	t1.Id,
	t1.DateTimeOffset,
	t1.DateTimeOffsetNullable
FROM
	DateTypesOffset t1

