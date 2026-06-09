-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123n456'u LIKE '%n%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123n456'u NOT LIKE '%n%'u ESCAPE '~'s

