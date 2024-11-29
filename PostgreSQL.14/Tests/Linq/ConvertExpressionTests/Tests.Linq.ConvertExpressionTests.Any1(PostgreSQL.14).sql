BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Parent" p
			WHERE
				EXISTS(
					SELECT
						1
					FROM
						"Child" c_1
					WHERE
						p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1
				)
		)
			THEN True
		ELSE False
	END

