BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_TIMESTAMP('2010-' || LPad(CAST(p.ID AS VarChar(2)), 2, '0') || '-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	EXTRACT(YEAR FROM t."c1") = 2010

