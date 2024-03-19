BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + 1 * INTERVAL '1' YEAR, 'DD')
FROM
	"LinqDataTypes" t

