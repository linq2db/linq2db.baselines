BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	Min(t1."ParentID")
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."ParentID"
		FETCH NEXT :take ROWS ONLY
	) t1

