-- YDB Ydb

SELECT
	t1.MiddleName as MiddleName
FROM
	(
		SELECT DISTINCT
			ch.MiddleName as MiddleName
		FROM
			Person ch
	) t1
ORDER BY
	Coalesce(t1.MiddleName, '-1'u)

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

