-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				LEFT JOIN LATERAL (
					SELECT
						c_1."ParentID",
						c_1."ChildID"
					FROM
						"Child" c_1
					WHERE
						c_1."ParentID" = p."ParentID"
					LIMIT 1
				) t1 ON 1=1
	)

