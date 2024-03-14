BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + -1 * INTERVAL '7' DAY, 'DD')
FROM
	"LinqDataTypes" t

