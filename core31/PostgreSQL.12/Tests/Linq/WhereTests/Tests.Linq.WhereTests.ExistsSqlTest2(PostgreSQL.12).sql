BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
	)

