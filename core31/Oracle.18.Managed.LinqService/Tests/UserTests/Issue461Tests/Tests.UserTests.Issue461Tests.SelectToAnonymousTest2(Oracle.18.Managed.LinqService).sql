BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."Child"
FROM
	"Parent" sep
		OUTER APPLY (
			SELECT
				l."ParentID" as "Child"
			FROM
				"Child" l
			FETCH NEXT :take ROWS ONLY
		) t1

