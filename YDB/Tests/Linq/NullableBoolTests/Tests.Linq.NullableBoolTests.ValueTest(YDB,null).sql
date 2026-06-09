-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` IS NULL

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	1 = 0

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` IS NOT NULL

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t

