-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + -2 * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

