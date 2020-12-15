BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1
		)
			THEN True
		ELSE False
	END

