-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.ID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	(
		SELECT
			p.FirstName LIKE '%Jo%'u ESCAPE '~'s as Field1,
			p.FirstName as FirstName,
			p.PersonID as ID,
			p.LastName as LastName,
			p.MiddleName as MiddleName,
			p.Gender as Gender
		FROM
			Person p
	) t1
WHERE
	t1.Field1
ORDER BY
	t1.Field1

