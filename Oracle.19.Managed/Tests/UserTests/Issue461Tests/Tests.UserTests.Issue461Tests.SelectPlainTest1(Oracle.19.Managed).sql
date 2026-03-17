-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			c_1."ParentID" + 1
		FROM
			"Child" c_1
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" p

