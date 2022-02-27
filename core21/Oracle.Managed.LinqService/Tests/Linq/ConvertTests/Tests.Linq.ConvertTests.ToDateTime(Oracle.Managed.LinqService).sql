BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p.c1
FROM
	(
		SELECT
			TO_TIMESTAMP(Cast(To_Number(To_Char(t.DateTimeValue, 'YYYY')) as VarChar(11)) || '-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	To_Number(To_Char(p.c1, 'DD')) > 0

