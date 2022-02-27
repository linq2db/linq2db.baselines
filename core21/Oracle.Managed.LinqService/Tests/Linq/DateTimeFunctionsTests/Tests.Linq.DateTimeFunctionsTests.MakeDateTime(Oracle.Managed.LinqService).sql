BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t.c1
FROM
	(
		SELECT
			TO_DATE('2010-' || Cast(p.ID as VarChar(11)) || '-1', 'YYYY-MM-DD') as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	To_Number(To_Char(t.c1, 'YYYY')) = 2010

