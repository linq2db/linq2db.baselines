BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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

