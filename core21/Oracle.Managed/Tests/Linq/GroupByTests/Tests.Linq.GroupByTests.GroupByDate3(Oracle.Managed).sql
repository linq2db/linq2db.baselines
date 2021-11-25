BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Sum(selectParam."MoneyValue"),
	To_Number(To_Char(TO_DATE(Cast(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as VarChar(11)) || '-' || Cast(To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as VarChar(11)) || '-1', 'YYYY-MM-DD'), 'YYYY')),
	To_Number(To_Char(TO_DATE(Cast(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as VarChar(11)) || '-' || Cast(To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as VarChar(11)) || '-1', 'YYYY-MM-DD'), 'MM'))
FROM
	"LinqDataTypes" selectParam
GROUP BY
	TO_DATE(Cast(To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')) as VarChar(11)) || '-' || Cast(To_Number(To_Char(selectParam."DateTimeValue", 'MM')) as VarChar(11)) || '-1', 'YYYY-MM-DD')

