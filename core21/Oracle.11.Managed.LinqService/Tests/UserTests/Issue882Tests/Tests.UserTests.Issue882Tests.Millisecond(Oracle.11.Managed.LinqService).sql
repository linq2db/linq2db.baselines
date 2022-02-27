BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	MOD((to_Number(To_Char(t.DateTimeValue, 'FF'))) / 1000, 7)
FROM
	LinqDataTypes t

