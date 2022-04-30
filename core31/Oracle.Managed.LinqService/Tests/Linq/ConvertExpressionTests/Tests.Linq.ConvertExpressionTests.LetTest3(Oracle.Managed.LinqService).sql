BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" p_1
		OUTER APPLY (
			SELECT
				p."ParentID"
			FROM
				"Child" p
			FETCH NEXT :take ROWS ONLY
		) t1

