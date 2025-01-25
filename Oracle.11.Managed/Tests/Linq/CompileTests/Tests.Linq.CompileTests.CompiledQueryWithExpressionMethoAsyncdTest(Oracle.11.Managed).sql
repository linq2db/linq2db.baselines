BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			x."ParentID",
			x."Value1"
		FROM
			"Parent" x
		WHERE
			x."ParentID" = :ParentID
		ORDER BY
			x."ParentID" DESC
	) t1
WHERE
	ROWNUM <= 1

