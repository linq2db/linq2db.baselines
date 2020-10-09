BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t.DateTimeValue
FROM
	LinqDataTypes t
WHERE
	To_Number(To_Char(t.DateTimeValue, 'DD')) > 0

