BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

