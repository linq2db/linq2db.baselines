BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Sum(t1.MoneyValue), 
	To_Number(To_Char(t1.Key_1, 'YYYY')), 
	To_Number(To_Char(t1.Key_1, 'MM'))
FROM
	( 
		SELECT 
			TO_DATE(Cast(To_Number(To_Char(selectParam.DateTimeValue, 'YYYY')) as VarChar(11)) || '-' || Cast(To_Number(To_Char(selectParam.DateTimeValue, 'MM')) as VarChar(11)) || '-1', 'YYYY-MM-DD') as Key_1, 
			selectParam.MoneyValue
		FROM
			LinqDataTypes selectParam
	) t1
GROUP BY
	t1.Key_1

