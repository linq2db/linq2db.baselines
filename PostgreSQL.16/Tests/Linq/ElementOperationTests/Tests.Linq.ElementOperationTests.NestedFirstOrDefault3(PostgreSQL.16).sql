-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	(
		SELECT DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	)
FROM
	"Parent" p

