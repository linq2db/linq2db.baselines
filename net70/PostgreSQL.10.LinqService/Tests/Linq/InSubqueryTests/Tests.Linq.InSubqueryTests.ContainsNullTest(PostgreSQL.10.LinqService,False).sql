BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				c_1."Value1"
			FROM
				"Parent" c_1
		)
			THEN True
		ELSE False
	END

