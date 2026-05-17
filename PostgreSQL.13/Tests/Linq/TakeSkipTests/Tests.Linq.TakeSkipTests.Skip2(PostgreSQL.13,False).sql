-- PostgreSQL.13 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" > 3 OR ch."ChildID" < 4
ORDER BY
	ch."ParentID",
	ch."ChildID"
OFFSET 3 

