-- Oracle.11.Managed Oracle11
SELECT
	t1."c1"
FROM
	(
		SELECT
			r."Plain" || r."Conv" as "c1"
		FROM
			"PlainAndConvertedUnicodeTable" r
		ORDER BY
			r."Id"
	) t1
WHERE
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") LIKE :read

-- Oracle.11.Managed Oracle11
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeTable" r
WHERE
	(r."Plain" || r."Conv") = :read

