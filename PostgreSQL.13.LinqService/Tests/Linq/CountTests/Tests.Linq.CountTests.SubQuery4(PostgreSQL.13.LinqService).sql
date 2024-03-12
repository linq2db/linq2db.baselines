BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" t1
		WHERE
			t1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

