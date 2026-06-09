-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName ILIKE 'joH%'u ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT ILIKE 'joH%'u ESCAPE '~'s AND p.PersonID = 1

