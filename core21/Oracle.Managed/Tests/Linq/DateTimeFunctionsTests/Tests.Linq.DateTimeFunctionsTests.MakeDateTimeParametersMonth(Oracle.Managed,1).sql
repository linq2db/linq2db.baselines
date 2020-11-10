BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Varchar2(1) -- String
SET     @p1 = '1'

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar(11)) || '-' || :p1 || '-1', 'YYYY-MM-DD')
FROM
	LinqDataTypes t

