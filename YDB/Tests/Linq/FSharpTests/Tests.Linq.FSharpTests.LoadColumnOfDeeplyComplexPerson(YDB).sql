-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.LastName as Value_1
FROM
	Person p
WHERE
	p.PersonID = $p
LIMIT 2

