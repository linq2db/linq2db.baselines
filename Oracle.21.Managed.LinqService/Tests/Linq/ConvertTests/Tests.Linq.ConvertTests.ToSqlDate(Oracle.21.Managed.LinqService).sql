BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TO_DATE(EXTRACT(YEAR FROM t."DateTimeValue") || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

