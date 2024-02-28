BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			To_Number(To_Char(TO_DATE('2010-' || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) as "Year_1",
			TO_DATE('2010-' || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."Year_1" = 2010)

