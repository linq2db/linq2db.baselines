BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

