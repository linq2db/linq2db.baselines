-- YDB Ydb

SELECT
	x.Key_1 as Key_1,
	x.Index_1 as Index_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY g_1.PersonID DESC) - 1l as Index_1,
			g_1.PersonID as Key_1
		FROM
			Person g_1
	) x
WHERE
	x.Index_1 > 0l
ORDER BY
	x.Key_1 DESC

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

