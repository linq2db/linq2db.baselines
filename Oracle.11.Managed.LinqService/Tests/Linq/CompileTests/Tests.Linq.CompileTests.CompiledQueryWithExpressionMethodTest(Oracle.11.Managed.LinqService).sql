BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

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
			x."ParentID" = :p
		ORDER BY
			x."ParentID" DESC
	) t1
WHERE
	ROWNUM <= 1
ORDER BY
	t1."ParentID" DESC

