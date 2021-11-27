BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p_1 Varchar2(1) -- String
SET     @p_1 = '1'

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar(11)) || '-' || :p_1 || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

