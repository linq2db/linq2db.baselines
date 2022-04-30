BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				ch."ParentID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	p."ParentID" = 1

