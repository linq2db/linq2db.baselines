-- PostgreSQL.15 PostgreSQL13

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	2 = ch."ParentID" AND 21 = ch."ChildID"

