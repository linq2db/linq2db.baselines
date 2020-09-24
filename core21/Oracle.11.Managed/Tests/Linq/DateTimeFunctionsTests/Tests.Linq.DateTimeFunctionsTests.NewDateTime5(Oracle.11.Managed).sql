BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			TO_DATE(Cast((To_Number(To_Char(p.DateTimeValue, 'YYYY')) + 1) as VarChar(11)) || '-10-1', 'YYYY-MM-DD') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	To_Number(To_Char(t.c1, 'MM')) = 10

