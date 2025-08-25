BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 4

SELECT DISTINCT
	t1."ParentID"
FROM
	(
		SELECT
			ch."ParentID"
		FROM
			"Child" ch
		ORDER BY
			ch."ParentID"
		FETCH NEXT :take ROWS ONLY
	) t1

