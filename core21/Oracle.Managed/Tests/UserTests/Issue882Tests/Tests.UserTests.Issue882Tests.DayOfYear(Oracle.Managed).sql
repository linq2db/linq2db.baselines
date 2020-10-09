BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	MOD(To_Number(To_Char(t.DateTimeValue, 'DDD')), 7)
FROM
	LinqDataTypes t

