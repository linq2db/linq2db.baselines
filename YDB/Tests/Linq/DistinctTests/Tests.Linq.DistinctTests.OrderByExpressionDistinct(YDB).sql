-- YDB Ydb

SELECT
	x_1.MiddleName as MiddleName,
	x_1.LastName as LastName
FROM
	(
		SELECT DISTINCT
			x.MiddleName as MiddleName,
			CASE
				WHEN x.LastName = 'Pupkin'u THEN NULL
				ELSE x.LastName
			END as LastName
		FROM
			Person x
	) x_1
ORDER BY
	Coalesce(x_1.MiddleName, '-2'u) DESC

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

