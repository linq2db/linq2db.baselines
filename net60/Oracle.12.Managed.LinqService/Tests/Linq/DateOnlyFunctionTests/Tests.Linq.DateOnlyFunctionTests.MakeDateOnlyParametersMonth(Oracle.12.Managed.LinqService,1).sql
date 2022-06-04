BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar2(11)) || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

