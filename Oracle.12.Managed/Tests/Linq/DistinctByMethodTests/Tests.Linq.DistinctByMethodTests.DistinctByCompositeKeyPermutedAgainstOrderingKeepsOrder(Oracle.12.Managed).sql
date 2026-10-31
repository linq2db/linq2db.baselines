-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."ParentID", e."Value1" ORDER BY e."Value1" NULLS FIRST, e."ParentID") as "RowNumber",
			e."Value1",
			e."ParentID"
		FROM
			"Parent" e
	) p
WHERE
	p."RowNumber" = 1
ORDER BY
	p."Value1" NULLS FIRST,
	p."ParentID"

