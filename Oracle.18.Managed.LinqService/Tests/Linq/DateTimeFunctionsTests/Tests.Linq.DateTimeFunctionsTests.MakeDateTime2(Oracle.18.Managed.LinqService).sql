BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			EXTRACT(YEAR FROM TO_TIMESTAMP('2010-' || LPad(CAST(p.ID AS VarChar(2)), 2, '0') || '-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) as "Year_1",
			TO_TIMESTAMP('2010-' || LPad(CAST(p.ID AS VarChar(2)), 2, '0') || '-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Year_1" = 2010 AND t."Year_1" IS NOT NULL

