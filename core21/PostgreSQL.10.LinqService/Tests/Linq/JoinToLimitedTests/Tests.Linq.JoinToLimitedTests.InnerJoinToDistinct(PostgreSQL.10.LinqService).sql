BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	o."ParentID", 
	o."Value1", 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Parent" o
		INNER JOIN LATERAL ( 
			SELECT DISTINCT 
				cg."ParentID", 
				cg."ChildID"
			FROM
				"Child" cg
			WHERE
				o."ParentID" = cg."ParentID"
		) t1 ON 1=1

