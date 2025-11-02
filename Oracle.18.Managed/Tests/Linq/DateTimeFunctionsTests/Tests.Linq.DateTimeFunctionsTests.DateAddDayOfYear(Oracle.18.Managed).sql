-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + 3 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

