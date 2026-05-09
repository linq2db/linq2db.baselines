-- DuckDB
DECLARE $ts  -- Object
SET     $ts = INTERVAL '1 days 00:00:00'

SELECT
	t.Id,
	t.DateTime + CAST($ts AS INTERVAL),
	t.DateTimeNullable + CAST($ts AS INTERVAL),
	t.DateTime2 + CAST($ts AS INTERVAL),
	t.DateTime2Nullable + CAST($ts AS INTERVAL),
	t.DateTime - CAST($ts AS INTERVAL),
	t.DateTimeNullable - CAST($ts AS INTERVAL),
	t.DateTime2 - CAST($ts AS INTERVAL),
	t.DateTime2Nullable - CAST($ts AS INTERVAL),
	t.DateTime + CAST($ts AS INTERVAL),
	t.DateTimeNullable + CAST($ts AS INTERVAL),
	t.DateTime2 + CAST($ts AS INTERVAL),
	t.DateTime2Nullable + CAST($ts AS INTERVAL)
FROM
	DateTypes t
UNION ALL
SELECT
	t_1.Id,
	t_1.DateTime + CAST($ts AS INTERVAL),
	t_1.DateTimeNullable + CAST($ts AS INTERVAL),
	t_1.DateTime2 + CAST($ts AS INTERVAL),
	t_1.DateTime2Nullable + CAST($ts AS INTERVAL),
	t_1.DateTime - CAST($ts AS INTERVAL),
	t_1.DateTimeNullable - CAST($ts AS INTERVAL),
	t_1.DateTime2 - CAST($ts AS INTERVAL),
	t_1.DateTime2Nullable - CAST($ts AS INTERVAL),
	t_1.DateTime + CAST($ts AS INTERVAL),
	t_1.DateTimeNullable + CAST($ts AS INTERVAL),
	t_1.DateTime2 + CAST($ts AS INTERVAL),
	t_1.DateTime2Nullable + CAST($ts AS INTERVAL)
FROM
	DateTypes t_1

-- DuckDB

SELECT
	t1.Id,
	t1.DateTime,
	t1.DateTimeNullable,
	t1.DateTime2,
	t1.DateTime2Nullable
FROM
	DateTypes t1

