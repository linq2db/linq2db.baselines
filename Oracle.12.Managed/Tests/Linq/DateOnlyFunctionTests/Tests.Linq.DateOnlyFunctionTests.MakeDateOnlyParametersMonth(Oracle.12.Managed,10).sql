BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(2) -- String
SET     @p = '10'

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-' || :p || '-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

