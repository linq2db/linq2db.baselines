-- YDB Ydb

SELECT
	t1.MiddleName as MiddleName,
	COUNT(*) as Count_1
FROM
	Person t1
GROUP BY
	t1.MiddleName
HAVING
	t1.MiddleName IS NULL OR t1.MiddleName <> 'Unknown'u

