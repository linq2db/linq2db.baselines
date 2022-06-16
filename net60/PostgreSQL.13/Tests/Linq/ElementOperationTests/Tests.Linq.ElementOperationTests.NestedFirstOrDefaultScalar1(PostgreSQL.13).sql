BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ChildID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL (
			SELECT
				p."ChildID"
			FROM
				"Child" p
			LIMIT 1
		) t1 ON 1=1

