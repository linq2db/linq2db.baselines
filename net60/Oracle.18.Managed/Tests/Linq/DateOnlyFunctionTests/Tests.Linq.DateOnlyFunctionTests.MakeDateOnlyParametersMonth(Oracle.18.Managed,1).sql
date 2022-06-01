BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p_1 Varchar2(2) -- String
SET     @p_1 = '01'

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar2(11)) || '-' || :p_1 || '-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

