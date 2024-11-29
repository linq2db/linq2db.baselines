BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 3
		)
			THEN True
		ELSE False
	END

