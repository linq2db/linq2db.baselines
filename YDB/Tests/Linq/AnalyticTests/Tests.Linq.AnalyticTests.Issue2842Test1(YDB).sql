-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	RANK() OVER (ORDER BY x.PersonID = 2) as c1
FROM
	Person x

