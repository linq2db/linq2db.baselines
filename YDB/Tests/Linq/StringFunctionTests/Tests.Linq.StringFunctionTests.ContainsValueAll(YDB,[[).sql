-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123[[456'u LIKE '%[[%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123[[456'u NOT LIKE '%[[%'u ESCAPE '~'s

