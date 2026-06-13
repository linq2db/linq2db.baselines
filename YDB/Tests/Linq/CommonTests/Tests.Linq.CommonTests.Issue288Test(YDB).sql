-- YDB Ydb

SELECT
	p.FirstName as ID
FROM
	Person p
WHERE
	p.FirstName IS NULL
LIMIT 1

-- YDB Ydb
DECLARE $p Text(4) -- String
SET     $p = 'John'u

SELECT
	p.FirstName as ID
FROM
	Person p
WHERE
	p.FirstName = $p
LIMIT 1

