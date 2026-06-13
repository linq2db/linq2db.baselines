-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	p1.PersonID as ID,
	p2.FirstName as FirstName
FROM
	Person p1
		CROSS JOIN Person p2
WHERE
	p2.PersonID = $id AND p1.PersonID = p2.PersonID

