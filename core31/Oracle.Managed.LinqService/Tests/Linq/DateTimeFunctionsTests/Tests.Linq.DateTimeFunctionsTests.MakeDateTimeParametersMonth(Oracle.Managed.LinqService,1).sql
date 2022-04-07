BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_DATE(Cast((2010 + t.ID) as VarChar2(11)) || '-1-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

