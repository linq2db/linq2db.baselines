-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	1 as c1
FROM
	Person t1
LIMIT $take

