-- YDB Ydb
SELECT
	p.Gender as Gender
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Gender ORDER BY e.PersonID) as RowNumber,
			e.PersonID as ID,
			e.Gender as Gender
		FROM
			Person e
	) p
WHERE
	p.RowNumber = 1l
ORDER BY
	p.ID

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

