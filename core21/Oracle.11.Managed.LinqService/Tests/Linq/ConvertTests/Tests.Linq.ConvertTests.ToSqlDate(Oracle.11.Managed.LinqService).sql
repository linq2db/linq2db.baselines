BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	TO_DATE(Cast(To_Number(To_Char(t.DateTimeValue, 'YYYY')) as VarChar(11)) || '-01-01', 'YYYY-MM-DD')
FROM
	LinqDataTypes t

