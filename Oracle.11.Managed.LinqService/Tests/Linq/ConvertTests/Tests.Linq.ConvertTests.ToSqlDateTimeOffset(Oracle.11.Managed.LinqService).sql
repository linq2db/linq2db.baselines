BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	EXTRACT(YEAR FROM t."DateTimeValue") || '-01-01 00:20:00'
FROM
	"LinqDataTypes" t

