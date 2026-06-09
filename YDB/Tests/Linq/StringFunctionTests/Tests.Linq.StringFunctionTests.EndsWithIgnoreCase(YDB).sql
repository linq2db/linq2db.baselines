-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE '%JOHN'u ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT LIKE '%JOHN'u ESCAPE '~'s AND p.PersonID = 1

