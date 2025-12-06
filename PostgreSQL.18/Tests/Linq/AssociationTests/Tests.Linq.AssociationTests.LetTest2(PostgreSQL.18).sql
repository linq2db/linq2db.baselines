-- PostgreSQL.18 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			t."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" t

-- PostgreSQL.18 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			t."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" t

