-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	true as c1
FROM
	SelectExpressionTable t1
LIMIT $take

