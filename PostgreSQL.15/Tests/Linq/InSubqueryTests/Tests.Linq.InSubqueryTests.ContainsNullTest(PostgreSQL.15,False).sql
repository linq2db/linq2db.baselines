BeforeExecute
-- PostgreSQL.15 PostgreSQL

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

