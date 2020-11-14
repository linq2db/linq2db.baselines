BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Varchar2(2) -- String
SET     @p1 = '10'

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar(11)) || '-' || :p1 || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

