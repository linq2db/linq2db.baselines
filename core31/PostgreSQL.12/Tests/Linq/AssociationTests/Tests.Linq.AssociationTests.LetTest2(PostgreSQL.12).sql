BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

