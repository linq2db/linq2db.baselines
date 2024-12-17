BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" t1
		)
			THEN True
		ELSE False
	END

