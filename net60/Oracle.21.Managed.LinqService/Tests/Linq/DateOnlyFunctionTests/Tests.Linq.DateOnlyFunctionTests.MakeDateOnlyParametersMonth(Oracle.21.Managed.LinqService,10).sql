BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar2(11)) || '-10-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

