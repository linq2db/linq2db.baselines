-- YDB Ydb
DECLARE $ps Text(3) -- String
SET     $ps = '%[%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123[456'u LIKE $ps ESCAPE '~'s

