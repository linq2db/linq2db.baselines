BeforeExecute
-- PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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

