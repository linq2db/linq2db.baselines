-- YDB Ydb
DECLARE $s Text(7) -- String
SET     $s = '123[456'u
DECLARE $ps Text(3) -- String
SET     $ps = '%[%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.PersonID = 1 AND $s LIKE $ps ESCAPE '~'s

