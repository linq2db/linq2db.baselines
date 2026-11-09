-- YDB Ydb
SELECT
	g_1.Gender as Gender,
	COUNT(*) as Count_1
FROM
	Person g_1
GROUP BY
	g_1.Gender

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

