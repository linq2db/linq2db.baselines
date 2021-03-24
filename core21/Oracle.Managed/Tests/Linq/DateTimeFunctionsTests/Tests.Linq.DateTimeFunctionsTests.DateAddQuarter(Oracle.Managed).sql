BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue" + -1D * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

