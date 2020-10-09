BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Cast(To_Number(To_Char(t.DateTimeValue, 'HH24')) as VarChar(11)) || ':01:01'
FROM
	LinqDataTypes t

