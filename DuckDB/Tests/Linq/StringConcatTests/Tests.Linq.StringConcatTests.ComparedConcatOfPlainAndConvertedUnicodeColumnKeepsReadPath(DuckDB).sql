-- DuckDB
SELECT
	r.Plain || r.Conv
FROM
	PlainAndConvertedUnicodeRow r
ORDER BY
	r.Id
LIMIT 1

-- DuckDB
DECLARE $read NVarChar(6) -- String
SET     $read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) = $read

-- DuckDB
DECLARE $read NVarChar(6) -- String
SET     $read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) <> $read

-- DuckDB
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				r.Plain || r.Conv
			FROM
				PlainAndConvertedUnicodeRow r
		)
			THEN True
		ELSE False
	END

-- DuckDB
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) IN ('A-x:n1')

