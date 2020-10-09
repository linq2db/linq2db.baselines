BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	ch."ParentID", 
	ch."ChildID"
FROM
	"Child" ch
WHERE
	(ch."ChildID" > 3 OR ch."ChildID" < 4)
OFFSET 3 

