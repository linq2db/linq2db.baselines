BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	TRUNC(t."DateTimeValue" + 5D * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

