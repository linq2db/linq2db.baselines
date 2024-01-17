BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_TIMESTAMP('2010-' || Lpad(p.ID,2,'0') || '-01 20:35:44', 'YYYY-MM-DD HH24:MI:SS') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'YYYY')) = 2010

