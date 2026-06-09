-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2,
	t1.`Enum` as `Enum`,
	t1.EnumNullable as EnumNullable,
	t1.EnumWithNull as EnumWithNull,
	t1.EnumWithNullDeclarative as EnumWithNullDeclarative,
	t1.BoolValue as BoolValue,
	t1.AnotherBoolValue as AnotherBoolValue,
	t1.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2
FROM
	ValueConversion t
ORDER BY
	t.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.Value2 as Value2
FROM
	(
		SELECT
			t.Id as Id,
			t.Value1 as Value1,
			t.Value2 as Value2
		FROM
			ValueConversion t
	) t1
ORDER BY
	t1.Id

-- YDB Ydb

SELECT
	t2.Id as Id,
	t2.Value1 as Value1,
	t2.Value2 as Value2
FROM
	(
		SELECT
			t.Id as Id,
			t.Value1 as Value1,
			t.Value2 as Value2
		FROM
			ValueConversion t
		UNION ALL
		SELECT
			t1.Id as Id,
			t1.Value1 as Value1,
			t1.Value2 as Value2
		FROM
			(
				SELECT
					t_1.Id as Id,
					t_1.Value1 as Value1,
					t_1.Value2 as Value2
				FROM
					ValueConversion t_1
			) t1
	) t2
ORDER BY
	t2.Id

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 1

SELECT
	t1.Value2 as Value2
FROM
	(
		SELECT
			t.Id as Id,
			t.Value2 as Value2
		FROM
			ValueConversion t
	) t1
ORDER BY
	t1.Id
LIMIT 1 OFFSET $skip 

