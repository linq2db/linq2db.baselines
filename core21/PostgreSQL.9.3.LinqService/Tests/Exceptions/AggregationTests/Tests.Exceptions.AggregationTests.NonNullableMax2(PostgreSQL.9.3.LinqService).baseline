BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	(
		SELECT
			Max(t1."ParentID")
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID" AND t1."ParentID" < 0
	)
FROM
	"Parent" p

