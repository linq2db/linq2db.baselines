-- YDB Ydb

SELECT
	s.ID as ID,
	s.FirstName as FirstName
FROM
	(
		SELECT
			Unwrap(CAST(String::LeftPad(p.FirstName, p.PersonID, '.'u) AS Text)) as FirstName,
			p.PersonID as ID
		FROM
			Person p
	) s
WHERE
	s.FirstName <> ''u

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

