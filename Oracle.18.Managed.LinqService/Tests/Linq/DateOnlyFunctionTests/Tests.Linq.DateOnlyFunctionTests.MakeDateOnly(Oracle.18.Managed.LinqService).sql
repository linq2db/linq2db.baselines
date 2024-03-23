BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(TO_DATE('2010-' || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) = 2010

