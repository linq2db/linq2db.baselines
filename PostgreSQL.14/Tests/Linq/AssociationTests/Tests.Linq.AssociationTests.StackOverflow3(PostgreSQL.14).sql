-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."Value1"
	) <> 0

