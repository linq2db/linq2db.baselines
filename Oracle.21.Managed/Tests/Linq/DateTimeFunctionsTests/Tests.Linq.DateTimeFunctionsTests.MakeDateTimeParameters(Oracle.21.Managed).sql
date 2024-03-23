BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(5) -- String
SET     @p = '2010-'

SELECT
	t.ID
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(TO_DATE(:p || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) = 2010

