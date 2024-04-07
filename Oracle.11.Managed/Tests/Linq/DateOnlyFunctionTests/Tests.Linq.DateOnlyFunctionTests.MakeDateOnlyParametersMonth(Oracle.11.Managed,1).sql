BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(2) -- String
SET     @p = '01'

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-' || :p || '-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

