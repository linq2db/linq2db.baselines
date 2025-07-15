BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" >= 0 AND ch."ChildID" <= 100
LIMIT 3

