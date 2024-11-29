BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @year Int32
SET     @year = 2010

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_TIMESTAMP(LPad(CAST(:year AS VarChar(4)), 4, '0') || '-' || LPad(CAST(p.ID AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	EXTRACT(YEAR FROM t."c1") = 2010

