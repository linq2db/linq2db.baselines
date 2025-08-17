BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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
			LIMIT 1
		) t2 ON 1=1

