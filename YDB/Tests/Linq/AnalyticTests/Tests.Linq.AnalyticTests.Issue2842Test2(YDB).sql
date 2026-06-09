-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	RANK() OVER(ORDER BY CASE
		WHEN x.PersonID = 2 THEN 1
		ELSE 0
	END) as rank
FROM
	Person x

