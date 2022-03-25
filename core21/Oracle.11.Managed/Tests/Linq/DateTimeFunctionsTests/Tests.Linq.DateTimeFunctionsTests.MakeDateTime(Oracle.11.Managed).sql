BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."c1"
FROM
	(
		SELECT
			TO_DATE('2010-' || CASE
				WHEN p.ID IS NULL THEN ''
				ELSE Cast(p.ID as VarChar2(11))
			END || '-1', 'YYYY-MM-DD') as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	To_Number(To_Char(t."c1", 'YYYY')) = 2010

