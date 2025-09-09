BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		FETCH NEXT :take ROWS ONLY
	) t2

