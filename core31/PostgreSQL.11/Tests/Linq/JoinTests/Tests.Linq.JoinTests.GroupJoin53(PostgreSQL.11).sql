BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				ch."ParentID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	p."ParentID" = 1

