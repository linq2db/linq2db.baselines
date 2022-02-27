BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			TO_TIMESTAMP('2010-' || Cast(p.ID as VarChar(11)) || '-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	To_Number(To_Char(t.c1, 'YYYY')) = 2010

