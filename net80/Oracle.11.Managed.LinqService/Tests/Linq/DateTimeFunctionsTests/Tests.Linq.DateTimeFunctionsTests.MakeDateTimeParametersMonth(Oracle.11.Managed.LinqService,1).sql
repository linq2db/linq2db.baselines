BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TO_DATE(Lpad((2010 + t.ID),4,'0') || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

