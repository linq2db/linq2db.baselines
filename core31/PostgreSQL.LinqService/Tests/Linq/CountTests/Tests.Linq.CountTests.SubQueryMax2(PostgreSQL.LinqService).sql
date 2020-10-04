BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t2.cnt)
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				Count(*) as cnt
			FROM
				"Child" t1
			WHERE
				p."ParentID" = t1."ParentID"
		) t2 ON 1=1

