BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_DATE('2010-' || Lpad(p.ID,2,'0') || '-01', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'YYYY')) = 2010

