-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID = $p
LIMIT 2

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID = $p
LIMIT 2

