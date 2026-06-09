-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = true

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = true

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = false OR t.`Value` IS NULL

-- YDB Ydb

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = false

