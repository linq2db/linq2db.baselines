BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Trunc(d."DateTimeValue", 'DD')
FROM
	"LinqDataTypes" d
WHERE
	To_Number(To_Char(d."DateTimeValue", 'DD')) > 0

