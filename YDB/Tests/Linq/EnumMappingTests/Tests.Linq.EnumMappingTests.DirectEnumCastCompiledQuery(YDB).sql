-- YDB Ydb
DECLARE Gender Text(1) -- AnsiStringFixedLength
SET     Gender = 'F'u

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.Gender = $Gender
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE Gender Text(1) -- AnsiStringFixedLength
SET     Gender = 'M'u

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.Gender = $Gender
ORDER BY
	p.PersonID

