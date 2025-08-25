BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(
		SELECT
			l."ParentID" + 1
		FROM
			"Child" l
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" sep

