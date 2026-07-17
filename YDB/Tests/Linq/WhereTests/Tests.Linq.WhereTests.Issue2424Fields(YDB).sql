-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue >= right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue <= right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue > right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue < right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue = right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue <> right_1.StrValue

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue >= right_1.StrValueNullable OR right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue <= right_1.StrValueNullable

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue > right_1.StrValueNullable OR right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue < right_1.StrValueNullable

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue = right_1.StrValueNullable

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValue <> right_1.StrValueNullable OR right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable >= right_1.StrValueNullable OR right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable <= right_1.StrValueNullable OR i.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable > right_1.StrValueNullable OR i.StrValueNullable IS NOT NULL AND right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable < right_1.StrValueNullable OR i.StrValueNullable IS NULL AND right_1.StrValueNullable IS NOT NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable = right_1.StrValueNullable OR i.StrValueNullable IS NULL AND right_1.StrValueNullable IS NULL

-- YDB Ydb
SELECT
	i.Id as Id,
	i.StrValue as StrValue,
	i.StrValueNullable as StrValueNullable,
	right_1.Id as Id_1,
	right_1.StrValue as StrValue_1,
	right_1.StrValueNullable as StrValueNullable_1
FROM
	Isue2424Table i
		CROSS JOIN Isue2424Table right_1
WHERE
	i.StrValueNullable <> right_1.StrValueNullable OR i.StrValueNullable IS NULL AND right_1.StrValueNullable IS NOT NULL OR i.StrValueNullable IS NOT NULL AND right_1.StrValueNullable IS NULL

