BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(TO_TIMESTAMP('2010-' || Lpad(t.ID,2,'0') || '-01 20:35:44', 'YYYY-MM-DD HH24:MI:SS'), 'YYYY')) = 2010

