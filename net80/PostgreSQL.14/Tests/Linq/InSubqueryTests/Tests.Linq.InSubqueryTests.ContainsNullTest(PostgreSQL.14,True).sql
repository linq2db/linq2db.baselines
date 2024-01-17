BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
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

