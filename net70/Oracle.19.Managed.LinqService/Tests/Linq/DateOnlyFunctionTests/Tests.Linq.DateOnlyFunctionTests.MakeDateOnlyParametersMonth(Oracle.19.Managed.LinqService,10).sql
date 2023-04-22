BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-10-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

