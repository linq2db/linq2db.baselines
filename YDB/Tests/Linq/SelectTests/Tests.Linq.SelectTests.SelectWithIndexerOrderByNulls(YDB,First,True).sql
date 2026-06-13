-- YDB Ydb

SELECT
	x.ID as ID,
	x.Index_1 as Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY CASE
				WHEN p.MiddleName IS NULL THEN 0
				ELSE 1
			END, p.MiddleName DESC, p.PersonID) - 1l as Index_1,
			p.PersonID as ID,
			CASE
				WHEN p.MiddleName IS NULL THEN 0
				ELSE 1
			END as c1,
			p.MiddleName as MiddleName
		FROM
			Person p
	) x
WHERE
	x.Index_1 >= 0l
ORDER BY
	x.c1,
	x.MiddleName DESC,
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

