BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

