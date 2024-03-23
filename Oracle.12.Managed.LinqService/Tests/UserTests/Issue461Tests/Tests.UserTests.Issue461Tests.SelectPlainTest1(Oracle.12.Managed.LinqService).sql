BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."c1"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" + 1 as "c1"
			FROM
				"Child" c_1
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1

