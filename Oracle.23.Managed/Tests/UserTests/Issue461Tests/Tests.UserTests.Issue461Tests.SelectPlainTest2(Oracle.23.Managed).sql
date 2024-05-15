BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	(
		SELECT
			c_1."ParentID" + 1
		FROM
			"Child" c_1
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" p

