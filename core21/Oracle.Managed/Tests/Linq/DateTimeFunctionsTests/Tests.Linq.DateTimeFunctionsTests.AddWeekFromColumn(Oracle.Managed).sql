BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * INTERVAL '7' DAY
FROM
	"LinqDataTypes" t

