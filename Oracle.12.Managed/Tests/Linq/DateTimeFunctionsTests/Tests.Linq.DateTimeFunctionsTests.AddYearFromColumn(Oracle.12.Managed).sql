BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

