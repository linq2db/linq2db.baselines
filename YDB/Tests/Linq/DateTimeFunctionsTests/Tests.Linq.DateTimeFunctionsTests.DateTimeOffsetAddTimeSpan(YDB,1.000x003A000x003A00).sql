-- YDB Ydb
DECLARE $ts Interval -- Object
SET     $ts = Interval('P1D')

SELECT
	t.Id as Id,
	t.DateTimeOffset + $ts as DateTimeOffset,
	t.DateTimeOffsetNullable + $ts as DateTimeOffsetNullable,
	t.DateTimeOffset - $ts as M_DateTimeOffset,
	t.DateTimeOffsetNullable - $ts as M_DateTimeOffsetNullable,
	t.DateTimeOffset + $ts as C_DateTimeOffset,
	t.DateTimeOffsetNullable + $ts as C_DateTimeOffsetNullable
FROM
	DateTypesOffset t
UNION ALL
SELECT
	t_1.Id as Id,
	t_1.DateTimeOffset + $ts as DateTimeOffset,
	t_1.DateTimeOffsetNullable + $ts as DateTimeOffsetNullable,
	t_1.DateTimeOffset - $ts as M_DateTimeOffset,
	t_1.DateTimeOffsetNullable - $ts as M_DateTimeOffsetNullable,
	t_1.DateTimeOffset + $ts as C_DateTimeOffset,
	t_1.DateTimeOffsetNullable + $ts as C_DateTimeOffsetNullable
FROM
	DateTypesOffset t_1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DateTimeOffset as DateTimeOffset,
	t1.DateTimeOffsetNullable as DateTimeOffsetNullable
FROM
	DateTypesOffset t1

