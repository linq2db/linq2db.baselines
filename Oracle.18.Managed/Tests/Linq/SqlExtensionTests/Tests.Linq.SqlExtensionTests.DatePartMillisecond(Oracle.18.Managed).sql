-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(to_Number(To_Char(t."DateTimeValue", 'FF'))) / 1000
FROM
	"LinqDataTypes" t

