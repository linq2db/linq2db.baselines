-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p2_1.FirstName as FirstName
FROM
	Person p
		CROSS JOIN (
			SELECT
				p2.PersonID as ID,
				p2.FirstName as FirstName
			FROM
				Person p2
			WHERE
				p2.PersonID <> 2
		) p2_1
WHERE
	(p.PersonID = 1 OR p.PersonID = 2) AND p.PersonID = p2_1.ID

-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p2_1.FirstName as FirstName
FROM
	Person p
		CROSS JOIN (
			SELECT
				p2.PersonID as ID,
				p2.FirstName as FirstName
			FROM
				Person p2
			WHERE
				p2.PersonID <> 2
		) p2_1
WHERE
	(p.PersonID = 1 OR p.PersonID = 2) AND p.PersonID = p2_1.ID

