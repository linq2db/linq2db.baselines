BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + -8D * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

