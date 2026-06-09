-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
		INNER JOIN (
			SELECT 1 AS `value` FROM Person
		) s ON s.`value` = p.PersonID

