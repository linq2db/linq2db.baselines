BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" <= 3
		)
			THEN True
		ELSE False
	END

