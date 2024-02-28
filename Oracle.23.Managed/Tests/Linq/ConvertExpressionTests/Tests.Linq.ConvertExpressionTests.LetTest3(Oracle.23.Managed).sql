BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				t1."ParentID"
			FROM
				"Child" t1
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1

