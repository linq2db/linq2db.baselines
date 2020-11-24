BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT
	t1."ParentID"
FROM
	"Parent" p_1
		OUTER APPLY (
			SELECT
				p."ParentID"
			FROM
				"Child" p
			WHERE
				p_1."ParentID" = p."ParentID"
			FETCH NEXT :take ROWS ONLY
		) t1
WHERE
	(
		SELECT
			1
		FROM
			"Child" t2
		WHERE
			p_1."ParentID" = t2."ParentID"
		FETCH NEXT :take_1 ROWS ONLY
	) IS NOT NULL

