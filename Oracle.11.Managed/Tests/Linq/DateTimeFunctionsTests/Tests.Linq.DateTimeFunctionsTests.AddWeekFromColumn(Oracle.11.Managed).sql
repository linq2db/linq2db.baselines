-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

