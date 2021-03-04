BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

