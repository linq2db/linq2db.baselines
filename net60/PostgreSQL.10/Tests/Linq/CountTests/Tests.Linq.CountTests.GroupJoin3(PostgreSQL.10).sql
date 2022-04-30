BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
	)
FROM
	"Parent" p

