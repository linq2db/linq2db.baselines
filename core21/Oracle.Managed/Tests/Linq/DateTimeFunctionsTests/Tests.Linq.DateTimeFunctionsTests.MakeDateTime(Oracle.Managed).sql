BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_DATE('2010-' || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" p
WHERE
	To_Number(To_Char(TO_DATE('2010-' || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD'), 'YYYY')) = 2010

