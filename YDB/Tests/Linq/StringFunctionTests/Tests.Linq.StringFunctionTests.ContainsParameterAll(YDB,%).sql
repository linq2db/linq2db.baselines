-- YDB Ydb
DECLARE $s Text(7) -- String
SET     $s = '123%456'u
DECLARE $toTest Text(4) -- String
SET     $toTest = '%~%%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND $s LIKE $toTest ESCAPE '~'s

