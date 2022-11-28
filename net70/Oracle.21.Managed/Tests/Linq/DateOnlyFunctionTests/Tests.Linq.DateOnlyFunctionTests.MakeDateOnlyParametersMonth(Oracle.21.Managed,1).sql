BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p_1 Varchar2(2) -- String
SET     @p_1 = '01'

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-' || :p_1 || '-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

