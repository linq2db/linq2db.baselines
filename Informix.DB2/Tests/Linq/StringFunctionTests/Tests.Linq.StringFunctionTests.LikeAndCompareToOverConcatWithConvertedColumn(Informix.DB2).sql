-- Informix.DB2 Informix
SELECT FIRST 1
	r.Plain || r.Conv
FROM
	PlainAndConvertedUnicodeTable r
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(r.Plain || r.Conv) LIKE 'A-x:n1'

-- Informix.DB2 Informix
DECLARE @read VarChar(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	PlainAndConvertedUnicodeTable r
WHERE
	(r.Plain || r.Conv) = @read

