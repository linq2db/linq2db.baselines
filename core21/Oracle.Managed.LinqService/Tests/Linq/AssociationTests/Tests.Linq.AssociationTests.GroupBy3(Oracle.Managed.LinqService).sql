BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Key_1
FROM
	( 
		SELECT 
			To_Number(To_Char(a_Types.DateTimeValue, 'YYYY')) as Key_1
		FROM
			Parent selectParam
				LEFT JOIN LinqDataTypes a_Types ON selectParam.ParentID = a_Types.ID
	) t1
GROUP BY
	t1.Key_1

