-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1_1
		WHERE
			t1."ParentID" = t1_1."ParentID"
	)
FROM
	"Parent" t1

