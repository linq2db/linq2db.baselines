-- Oracle.11.Managed Oracle11

SELECT
	EXTRACT(YEAR FROM t."DateTimeValue") || '-01-01 00:20:00'
FROM
	"LinqDataTypes" t

