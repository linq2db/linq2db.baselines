BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Person" t1
		)
			THEN True
		ELSE False
	END

