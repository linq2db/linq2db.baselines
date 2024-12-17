BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Parent" c_1
			WHERE
				c_1."Value1" IS NULL
		)
			THEN True
		ELSE False
	END

