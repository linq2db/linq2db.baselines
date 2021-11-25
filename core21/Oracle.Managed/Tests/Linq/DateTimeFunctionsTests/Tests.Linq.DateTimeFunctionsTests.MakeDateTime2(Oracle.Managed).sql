BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP('2010-' || Cast(p.ID as VarChar(11)) || '-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" p
WHERE
	To_Number(To_Char(TO_TIMESTAMP('2010-' || Cast(p.ID as VarChar(11)) || '-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS'), 'YYYY')) = 2010

