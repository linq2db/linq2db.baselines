-- YDB Ydb
DECLARE $value Bool -- Boolean
SET     $value = true

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = $value

-- YDB Ydb
DECLARE $value Bool -- Boolean
SET     $value = true

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` = $value

-- YDB Ydb
DECLARE $value Bool -- Boolean
SET     $value = true

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` <> $value OR t.`Value` IS NULL

-- YDB Ydb
DECLARE $value Bool -- Boolean
SET     $value = true

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	NullableBoolClass t
WHERE
	t.`Value` <> $value

