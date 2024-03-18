BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + 5D * INTERVAL '1' DAY, 'DD')
FROM
	"LinqDataTypes" t

