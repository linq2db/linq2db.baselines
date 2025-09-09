BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	EXTRACT(HOUR FROM t."DateTimeValue") || ':01:01'
FROM
	"LinqDataTypes" t

