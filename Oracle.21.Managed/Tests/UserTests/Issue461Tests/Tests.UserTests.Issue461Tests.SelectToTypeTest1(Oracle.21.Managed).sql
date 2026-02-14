-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			l."ParentID" + 1 as "Id"
		FROM
			"Child" l
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" sep

