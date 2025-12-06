-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				LEFT JOIN LATERAL (
					SELECT
						*
					FROM
						"Child" c_1
					WHERE
						c_1."ParentID" = p."ParentID"
					LIMIT 1
				) t1 ON 1=1
	)

