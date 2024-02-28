BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			To_Number(To_Char(TO_TIMESTAMP('2010-' || Lpad(t.ID,2,'0') || '-01 20:35:44', 'YYYY-MM-DD HH24:MI:SS'), 'YYYY')) as "Year_1",
			TO_TIMESTAMP('2010-' || Lpad(t.ID,2,'0') || '-01 20:35:44', 'YYYY-MM-DD HH24:MI:SS') as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."Year_1" = 2010)

