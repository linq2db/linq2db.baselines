BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						"Child" c_1
					WHERE
						p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1
				)
		)
			THEN True
		ELSE False
	END

