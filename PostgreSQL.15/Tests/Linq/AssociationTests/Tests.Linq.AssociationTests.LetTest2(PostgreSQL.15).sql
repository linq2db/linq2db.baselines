-- PostgreSQL.15 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" "a_Children"
		WHERE
			t."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" t

-- PostgreSQL.15 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" "a_Children"
		WHERE
			t."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" t

