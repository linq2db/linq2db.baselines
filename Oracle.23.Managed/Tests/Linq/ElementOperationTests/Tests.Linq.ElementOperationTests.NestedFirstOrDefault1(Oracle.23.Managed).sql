BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1

