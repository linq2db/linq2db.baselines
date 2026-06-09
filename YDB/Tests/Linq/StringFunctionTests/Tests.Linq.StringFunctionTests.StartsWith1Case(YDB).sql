-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE 'Jo%'u ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE 'jo%'u ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT LIKE 'Jo%'u ESCAPE '~'s AND p.PersonID = 1

