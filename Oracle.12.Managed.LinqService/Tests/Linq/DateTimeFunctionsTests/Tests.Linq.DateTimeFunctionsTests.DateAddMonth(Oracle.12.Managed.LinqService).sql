BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + 2 * INTERVAL '1' MONTH, 'DD')
FROM
	"LinqDataTypes" t

