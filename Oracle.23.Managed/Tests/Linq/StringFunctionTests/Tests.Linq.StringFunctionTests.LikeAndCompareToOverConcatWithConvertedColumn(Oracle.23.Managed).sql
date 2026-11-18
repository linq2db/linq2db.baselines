-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."Plain" || r."Conv" as "c1"
FROM
	"PlainAndConvertedUnicodeTable" r
ORDER BY
	r."Id"
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") LIKE :read

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") = :read

