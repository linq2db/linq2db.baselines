-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Plain" || r."Conv"
FROM
	"PlainAndConvertedUnicodeTable" r
ORDER BY
	r."Id"
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @read Text(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") LIKE :read

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @read Text(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") = :read

