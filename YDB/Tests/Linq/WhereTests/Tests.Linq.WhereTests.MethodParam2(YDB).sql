-- YDB Ydb
DECLARE $t Int32
SET     $t = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID = $t

-- YDB Ydb
DECLARE $t Int32
SET     $t = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID = $t

