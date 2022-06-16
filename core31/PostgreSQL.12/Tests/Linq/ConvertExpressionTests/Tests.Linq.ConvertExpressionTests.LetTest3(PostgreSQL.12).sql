BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL (
			SELECT
				p."ParentID"
			FROM
				"Child" p
			LIMIT 1
		) t1 ON 1=1

