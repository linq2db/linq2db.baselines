-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @dash Varchar2(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || :dash as "c1"
FROM
	"ConvertedUnicodeConcatRow" p
FETCH NEXT 2 ROWS ONLY

