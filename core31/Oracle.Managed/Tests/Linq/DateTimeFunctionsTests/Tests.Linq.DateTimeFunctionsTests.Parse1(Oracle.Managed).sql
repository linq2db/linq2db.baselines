BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(t."DateTimeValue", 'DD')) > 0

