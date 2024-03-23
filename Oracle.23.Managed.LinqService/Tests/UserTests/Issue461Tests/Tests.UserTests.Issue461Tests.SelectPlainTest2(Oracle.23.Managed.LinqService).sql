BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	t1.V
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" + 1 as V
			FROM
				"Child" c_1
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

