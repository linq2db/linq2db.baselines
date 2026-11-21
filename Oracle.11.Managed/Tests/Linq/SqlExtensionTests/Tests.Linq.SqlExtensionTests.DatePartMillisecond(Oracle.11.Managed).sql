-- Oracle.11.Managed Oracle11
SELECT
	Trunc((to_Number(To_Char(t."DateTimeValue", 'FF'))) / 1000)
FROM
	"LinqDataTypes" t

