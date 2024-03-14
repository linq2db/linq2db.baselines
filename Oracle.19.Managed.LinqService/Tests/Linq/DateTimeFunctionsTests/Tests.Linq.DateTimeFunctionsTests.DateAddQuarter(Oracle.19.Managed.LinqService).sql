BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + -1 * INTERVAL '3' MONTH, 'DD')
FROM
	"LinqDataTypes" t

