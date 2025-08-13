BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

