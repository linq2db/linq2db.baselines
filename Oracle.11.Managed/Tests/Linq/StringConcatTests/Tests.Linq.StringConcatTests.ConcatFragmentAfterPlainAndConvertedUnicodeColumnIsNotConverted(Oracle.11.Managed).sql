-- Oracle.11.Managed Oracle11
DECLARE @suffix Varchar2(1) -- String
SET     @suffix = '-'

SELECT
	r."Plain" || r."Conv" || :suffix
FROM
	"PlainAndConvertedUnicodeRow" r
WHERE
	ROWNUM <= 2

