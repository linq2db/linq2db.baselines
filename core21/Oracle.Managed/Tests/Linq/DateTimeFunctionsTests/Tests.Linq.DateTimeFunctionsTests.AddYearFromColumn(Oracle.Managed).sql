BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * INTERVAL '1' YEAR
FROM
	"LinqDataTypes" t

