-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" ch
		INNER JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" ch
		INNER JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" ch
		LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"

