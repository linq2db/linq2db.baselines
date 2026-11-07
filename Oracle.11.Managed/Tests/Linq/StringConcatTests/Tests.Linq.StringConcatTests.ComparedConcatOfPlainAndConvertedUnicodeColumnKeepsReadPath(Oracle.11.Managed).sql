-- Oracle.11.Managed Oracle11
SELECT
	t1."c1"
FROM
	(
		SELECT
			r."Plain" || r."Conv" as "c1"
		FROM
			"PlainAndConvertedUnicodeRow" r
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
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") = :read

-- Oracle.11.Managed Oracle11
DECLARE @read Varchar2(6) -- String
SET     @read = 'A-x:n1'

SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") <> :read

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	(r."Plain" || r."Conv") IN ('A-x:n1')

