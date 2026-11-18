-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @dash Varchar2(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || :dash as "c1"
FROM
	"ConvertedConcatRow" p
FETCH NEXT 2 ROWS ONLY

