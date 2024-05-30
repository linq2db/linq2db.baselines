BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + -35D * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

