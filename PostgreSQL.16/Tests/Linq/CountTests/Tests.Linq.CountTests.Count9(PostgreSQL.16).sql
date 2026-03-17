-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" ch
		INNER JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"

