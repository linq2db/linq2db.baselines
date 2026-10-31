-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	p."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 2) ORDER BY e."Value1" NULLS FIRST) as "RowNumber",
			e."Value1"
		FROM
			"Parent" e
	) p
WHERE
	p."RowNumber" = 1
ORDER BY
	p."Value1" NULLS FIRST

