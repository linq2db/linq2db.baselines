-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' DAY
FROM
	"LinqDataTypes" t

