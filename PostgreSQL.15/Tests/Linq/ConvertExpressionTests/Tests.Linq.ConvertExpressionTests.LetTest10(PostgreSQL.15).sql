BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
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
			THEN True
		ELSE False
	END

