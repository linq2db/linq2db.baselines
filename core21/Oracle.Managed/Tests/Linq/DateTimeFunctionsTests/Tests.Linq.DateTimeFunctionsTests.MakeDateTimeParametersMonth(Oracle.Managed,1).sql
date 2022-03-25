BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 Varchar2(1) -- String
SET     @p_1 = '1'

SELECT
	TO_DATE(CASE
		WHEN 2010 + t.ID IS NULL THEN ''
		ELSE Cast((2010 + t.ID) as VarChar2(11))
	END || '-' || :p_1 || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

