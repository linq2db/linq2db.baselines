-- YDB Ydb
DECLARE $ts Interval -- Object
SET     $ts = NULL

SELECT
	t.Id as Id,
	t.DateTime + $ts as DateTime,
	t.DateTimeNullable + $ts as DateTimeNullable,
	t.DateTime2 + $ts as DateTime2,
	t.DateTime2Nullable + $ts as DateTime2Nullable,
	t.DateTime - $ts as M_DateTime,
	t.DateTimeNullable - $ts as M_DateTimeNullable,
	t.DateTime2 - $ts as M_DateTime2,
	t.DateTime2Nullable - $ts as M_DateTime2Nullable,
	CAST(NULL AS Timestamp) as C_DateTime,
	CAST(NULL AS Timestamp) as C_DateTime_1,
	CAST(NULL AS Timestamp) as C_DateTime_2,
	CAST(NULL AS Timestamp) as C_DateTime_3
FROM
	DateTypes t
UNION ALL
SELECT
	t_1.Id as Id,
	t_1.DateTime + $ts as DateTime,
	t_1.DateTimeNullable + $ts as DateTimeNullable,
	t_1.DateTime2 + $ts as DateTime2,
	t_1.DateTime2Nullable + $ts as DateTime2Nullable,
	t_1.DateTime - $ts as M_DateTime,
	t_1.DateTimeNullable - $ts as M_DateTimeNullable,
	t_1.DateTime2 - $ts as M_DateTime2,
	t_1.DateTime2Nullable - $ts as M_DateTime2Nullable,
	CAST(NULL AS Timestamp) as C_DateTime,
	CAST(NULL AS Timestamp) as C_DateTime_1,
	CAST(NULL AS Timestamp) as C_DateTime_2,
	CAST(NULL AS Timestamp) as C_DateTime_3
FROM
	DateTypes t_1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DateTime as DateTime,
	t1.DateTimeNullable as DateTimeNullable,
	t1.DateTime2 as DateTime2,
	t1.DateTime2Nullable as DateTime2Nullable
FROM
	DateTypes t1

