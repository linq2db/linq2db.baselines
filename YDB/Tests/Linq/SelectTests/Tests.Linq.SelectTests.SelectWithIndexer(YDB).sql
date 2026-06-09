-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.LastName as LastName,
	x.Index_1 as Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p.PersonID DESC) - 1l as Index_1,
			p.FirstName as FirstName,
			p.LastName as LastName,
			p.PersonID as PersonID
		FROM
			Person p
	) x
WHERE
	x.Index_1 > 0l
ORDER BY
	x.PersonID DESC

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

