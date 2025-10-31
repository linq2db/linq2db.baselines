-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

