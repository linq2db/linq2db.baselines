BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			ORDER BY
				ch."ChildID"
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	p."ParentID" >= 1
ORDER BY
	p."ParentID"

