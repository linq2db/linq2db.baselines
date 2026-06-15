-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT LIKE '%Joh%'u ESCAPE '~'s AND p.PersonID = 1

