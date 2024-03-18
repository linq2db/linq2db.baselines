BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + 5 * INTERVAL '1' DAY, 'DD')
FROM
	"LinqDataTypes" t

