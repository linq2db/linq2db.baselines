BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH, 'DD')
FROM
	"LinqDataTypes" t

