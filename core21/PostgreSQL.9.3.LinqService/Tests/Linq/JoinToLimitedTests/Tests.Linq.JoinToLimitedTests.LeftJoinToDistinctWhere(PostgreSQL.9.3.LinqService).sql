BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	o."ParentID", 
	o."Value1", 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Parent" o
		LEFT JOIN LATERAL ( 
			SELECT DISTINCT 
				x."ParentID", 
				x."ChildID"
			FROM
				"Child" x
			WHERE
				x."ParentID" = o."ParentID"
		) t1 ON 1=1

