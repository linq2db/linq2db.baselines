-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	t1.Id as Id,
	t1.Grp as Grp,
	t1.`Value` as Value_1
FROM
	NullsTable t1
ORDER BY
	t1.`Value`,
	t1.Id
LIMIT $take

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Grp as Grp,
	t1.`Value` as Value_1
FROM
	NullsTable t1

