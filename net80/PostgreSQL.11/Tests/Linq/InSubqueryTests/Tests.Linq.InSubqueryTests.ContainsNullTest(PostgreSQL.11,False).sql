BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				c_1."Value1"
			FROM
				"Parent" c_1
			WHERE
				c_1."Value1" IS NULL
		)
			THEN True
		ELSE False
	END

