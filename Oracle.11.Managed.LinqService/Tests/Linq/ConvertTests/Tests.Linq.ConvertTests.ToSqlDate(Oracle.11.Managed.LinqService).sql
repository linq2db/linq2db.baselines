BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TO_DATE(EXTRACT(YEAR FROM t."DateTimeValue") || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

