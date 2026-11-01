-- Informix.DB2 Informix
SELECT FIRST 1
	r.Plain || r.Conv
FROM
	PlainAndConvertedUnicodeRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) = @read

-- Informix.DB2 Informix
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) <> @read

-- Informix.DB2 Informix
SELECT
	EXISTS(
		SELECT
			*
		FROM
			PlainAndConvertedUnicodeRow r
		WHERE
			'A-x:n1' = (r.Plain || r.Conv)
	)
FROM table(set{1})

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeRow r
WHERE
	(r.Plain || r.Conv) IN ('A-x:n1')

