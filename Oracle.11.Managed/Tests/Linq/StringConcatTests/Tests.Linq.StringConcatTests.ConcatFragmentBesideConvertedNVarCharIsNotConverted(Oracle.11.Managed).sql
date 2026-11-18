-- Oracle.11.Managed Oracle11
DECLARE @dash Varchar2(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || :dash
FROM
	"ConvertedUnicodeConcatRow" p
WHERE
	ROWNUM <= 2

