BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			1
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
		LIMIT 1
	) IS NOT NULL

