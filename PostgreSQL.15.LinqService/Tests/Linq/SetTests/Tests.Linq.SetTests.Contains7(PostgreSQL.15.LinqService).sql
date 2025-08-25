BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN 11 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

