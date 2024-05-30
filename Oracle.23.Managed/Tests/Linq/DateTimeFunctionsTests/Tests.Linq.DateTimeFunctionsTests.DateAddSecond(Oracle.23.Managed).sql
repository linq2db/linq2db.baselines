BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + 41 * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

