BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Sum(selectParam."MoneyValue"),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')),
	To_Number(To_Char(selectParam."DateTimeValue", 'MM'))
FROM
	"LinqDataTypes" selectParam
GROUP BY
	To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))

