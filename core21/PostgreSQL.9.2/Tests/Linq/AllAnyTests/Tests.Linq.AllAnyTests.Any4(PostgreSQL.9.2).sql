BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
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

