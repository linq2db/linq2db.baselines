-- PostgreSQL.11 PostgreSQL
SELECT
	r."Plain" || r."Conv"
FROM
	"PlainAndConvertedUnicodeRow" r
ORDER BY
	r."Id"
LIMIT 1

-- PostgreSQL.11 PostgreSQL
DECLARE @read Text(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") = :read

-- PostgreSQL.11 PostgreSQL
DECLARE @read Text(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") <> :read

-- PostgreSQL.11 PostgreSQL
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				r."Plain" || r."Conv"
			FROM
				"PlainAndConvertedUnicodeRow" r
		)
			THEN True
		ELSE False
	END

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") IN ('A-x:n1')

