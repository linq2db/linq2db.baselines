BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	o."ParentID", 
	o."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" o ON ch."ParentID" = o."ParentID" AND ch."ChildID" = 1

