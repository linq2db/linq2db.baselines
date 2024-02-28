BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Trunc(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY, 'DD')
FROM
	"LinqDataTypes" t

