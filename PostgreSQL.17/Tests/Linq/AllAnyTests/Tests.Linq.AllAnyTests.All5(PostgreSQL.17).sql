BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" <= :n
		)
			THEN True
		ELSE False
	END

