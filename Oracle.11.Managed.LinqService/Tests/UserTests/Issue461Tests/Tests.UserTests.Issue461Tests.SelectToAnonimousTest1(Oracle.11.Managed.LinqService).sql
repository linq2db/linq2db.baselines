BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	(
		SELECT
			l."ParentID" + 1
		FROM
			"Child" l
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" sep

