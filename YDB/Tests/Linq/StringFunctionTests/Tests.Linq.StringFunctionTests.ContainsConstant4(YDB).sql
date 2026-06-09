-- YDB Ydb
DECLARE $s Text(7) -- String
SET     $s = '123[456'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND $s LIKE '%[%'u ESCAPE '~'s

-- YDB Ydb
DECLARE $s Text(7) -- String
SET     $s = '123[456'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND $s NOT LIKE '%[%'u ESCAPE '~'s

