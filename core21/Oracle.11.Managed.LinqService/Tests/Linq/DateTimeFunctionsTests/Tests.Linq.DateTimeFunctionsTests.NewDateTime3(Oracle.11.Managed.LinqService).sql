BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			TO_TIMESTAMP(Cast(To_Number(To_Char(p.DateTimeValue, 'YYYY')) as VarChar(11)) || '-10-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	To_Number(To_Char(t.c1, 'MM')) = 10

