-- YDB Ydb
DECLARE $take Int32
SET     $take = 100

SELECT
	r.PersonID as PersonID
FROM
	Person r
ORDER BY
	r.PersonID
LIMIT $take

