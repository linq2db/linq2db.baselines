BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				1 = c_1."ParentID"
		)
			THEN True
		ELSE False
	END

