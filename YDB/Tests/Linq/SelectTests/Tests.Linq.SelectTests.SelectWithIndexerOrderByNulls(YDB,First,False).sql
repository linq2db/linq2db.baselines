-- YDB Ydb

SELECT
	x.ID as ID,
	x.Index_1 as Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY p.MiddleName, p.PersonID) - 1l as Index_1,
			p.PersonID as ID,
			p.MiddleName as MiddleName
		FROM
			Person p
	) x
WHERE
	x.Index_1 >= 0l
ORDER BY
	x.MiddleName,
	x.ID

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

