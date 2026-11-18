-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(1) -- String
SET     @suffix = '-'

SELECT
	r."Plain" || r."Conv" || :suffix as "c1"
FROM
	"PlainAndConvertedUnicodeRow" r
FETCH NEXT 2 ROWS ONLY

