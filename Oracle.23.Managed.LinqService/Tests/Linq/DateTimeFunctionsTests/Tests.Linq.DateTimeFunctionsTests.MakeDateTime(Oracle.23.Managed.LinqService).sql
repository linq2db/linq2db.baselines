BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1.ID
FROM
	(
		SELECT
			To_Number(To_Char(TO_DATE('2010-' || Lpad(t.ID,2,'0') || '-01', 'YYYY-MM-DD'), 'YYYY')) as "Year_1",
			t.ID
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."Year_1" = 2010

