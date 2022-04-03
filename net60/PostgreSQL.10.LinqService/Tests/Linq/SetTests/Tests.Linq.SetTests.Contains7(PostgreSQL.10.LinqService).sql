BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = 11
		)
			THEN True
		ELSE False
	END

