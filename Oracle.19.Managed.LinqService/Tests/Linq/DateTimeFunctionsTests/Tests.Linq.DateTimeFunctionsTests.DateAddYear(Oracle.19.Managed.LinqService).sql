BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + 11 * INTERVAL '1' YEAR, 'DD')
FROM
	"LinqDataTypes" t

