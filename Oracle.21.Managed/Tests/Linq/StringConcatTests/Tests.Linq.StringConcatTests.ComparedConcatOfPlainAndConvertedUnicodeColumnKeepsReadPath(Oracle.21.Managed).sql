-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Plain" || r."Conv" as "c1"
FROM
	"PlainAndConvertedUnicodeRow" r
ORDER BY
	r."Id"
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") = :read

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") <> :read

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN 'A-x:n1' IN (
			SELECT
				r."Plain" || r."Conv"
			FROM
				"PlainAndConvertedUnicodeRow" r
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") IN ('A-x:n1')

