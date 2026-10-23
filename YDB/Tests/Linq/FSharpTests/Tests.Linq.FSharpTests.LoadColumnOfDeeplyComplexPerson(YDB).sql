-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID = $p
LIMIT 2

