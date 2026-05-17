-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			"a_Children"."ParentID" + 1
		FROM
			"Child" "a_Children"
		WHERE
			p1."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" + 1 < p1."ParentID" + 2
		LIMIT 1
	)
FROM
	"Parent" p1
WHERE
	p1."ParentID" > -1 AND p1."ParentID" > -2

