BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	MOD(To_Number(To_Char(t.DateTimeValue, 'MM')), 7)
FROM
	LinqDataTypes t

