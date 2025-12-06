-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(HOUR FROM t."DateTimeValue") || ':01:01'
FROM
	"LinqDataTypes" t

