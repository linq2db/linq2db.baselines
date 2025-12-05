-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + 3 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

