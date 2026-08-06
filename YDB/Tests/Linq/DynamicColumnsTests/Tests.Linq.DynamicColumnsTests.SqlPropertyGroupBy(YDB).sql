-- YDB Ydb
SELECT
	p.FirstName as FirstName,
	COUNT(*) as Count_1
FROM
	Person p
GROUP BY
	p.FirstName

