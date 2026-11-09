-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 7

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."c1" ORDER BY e."Value1" NULLS FIRST, e."ParentID") as "RowNumber",
			e."Value1",
			e."ParentID"
		FROM
			(
				SELECT
					MOD(p."ParentID", 2) as "c1",
					p."Value1",
					p."ParentID"
				FROM
					"Parent" p
				ORDER BY
					p."Value1" NULLS FIRST,
					p."ParentID"
				FETCH NEXT :take ROWS ONLY
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Value1" NULLS FIRST,
	t1."ParentID"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

