BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."c1"
FROM
	(
		SELECT
			Cast(Cast(t.ID as Number(3)) as VarChar(3)) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	Length(p."c1") > 0

