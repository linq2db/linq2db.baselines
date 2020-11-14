BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	d."DateTimeValue"
FROM
	"LinqDataTypes" d
WHERE
	To_Number(To_Char(d."DateTimeValue", 'DD')) > 0

