BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL (
			SELECT
				p."ParentID"
			FROM
				"Child" p
			WHERE
				p_1."ParentID" = p."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	(
		SELECT
			1
		FROM
			"Child" t2
		WHERE
			p_1."ParentID" = t2."ParentID"
		LIMIT 1
	) IS NOT NULL

