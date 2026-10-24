-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	p1.PersonID as PersonID,
	p2_1.FirstName as FirstName
FROM
	Person p1
		CROSS JOIN (
			SELECT
				p2.PersonID as ID,
				p2.FirstName as FirstName
			FROM
				Person p2
			WHERE
				p2.PersonID = $id
		) p2_1
WHERE
	p1.PersonID = p2_1.ID

