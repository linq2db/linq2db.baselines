BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	TRUNC(t."DateTimeValue" + 5D * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

