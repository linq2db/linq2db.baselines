-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	x.Id as Id
FROM
	NullsTable x
ORDER BY
	x.`Value`,
	x.Id
LIMIT $take

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	x.Id as Id
FROM
	NullsTable x
ORDER BY
	x.`Value`,
	x.Id
LIMIT $take

